import 'dart:async';

import 'package:bloc_test/bloc_test.dart';
import 'package:day_quote/app/core/enums.dart';
import 'package:day_quote/app/domain/repositories/auth_repository.dart';
import 'package:day_quote/app/features/auth/cubit/auth_cubit.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockStreamSubscription extends Mock implements StreamSubscription {}

class MockUser extends Mock implements User {}

class MockAuthRepository extends Mock implements AuthRepository {}

void main() {
  late AuthCubit sut;
  late MockAuthRepository repository;
  late MockUser user;
  late MockStreamSubscription streamSubscription;

  setUp(() {
    repository = MockAuthRepository();
    sut = AuthCubit(repository);
    user = MockUser();
    streamSubscription = MockStreamSubscription();
  });

  group('start', () {
    group('success', () {
      setUp(() {
        when(() => repository.getUser()).thenAnswer((_) => Stream.value(user));
      });
      blocTest(
        'emits Status.loading then Status.success with user data',
        build: () => sut,
        act: (cubit) => cubit.start(),
        expect: () => [
          AuthState(
            status: Status.loading,
          ),
          AuthState(
            user: user,
            status: Status.success,
          )
        ],
      );
    });

    group('failure', () {
      setUp(() {
        when(() => repository.getUser())
            .thenAnswer((_) => Stream.error(Exception('test-user-exception')));
      });
      blocTest(
        'emits Status.loading then Status.error without user',
        build: () => sut,
        act: (cubit) => cubit.start(),
        expect: () => [
          AuthState(
            status: Status.loading,
          ),
          AuthState(
            user: null,
            status: Status.error,
          )
        ],
      );
    });
  });

  group('close', () {
    test('should cancel streamSubscription when state is closed', () {
      sut.close();
      verifyNever(() => streamSubscription.cancel()).called(0);
    });
  });
}
