import 'dart:async';
import 'package:day_quote/app/data/remote_data_sources/remote_auth_data_source.dart';
import 'package:day_quote/app/domain/repositories/auth_repository.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockAuthDataSource extends Mock implements AuthRemoteDataSource {}



void main() {
  late MockAuthDataSource dataSource;
  late AuthRepository sut;

  setUp(() {
    dataSource = MockAuthDataSource();
    sut = AuthRepository(dataSource);
  });

  group('getUser', () {
    final userController = StreamController<User?>();
    
    test('should call _authRemoteDataSoure.getUserData()', () {
      //1
      when(() => dataSource.getUserData())
          .thenAnswer((_) => userController.stream);
      //2
      sut.getUser();
      //3
      verify(() => dataSource.getUserData()).called(1);
    });
  });
}
