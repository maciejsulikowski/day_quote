import 'package:bloc_test/bloc_test.dart';
import 'package:day_quote/app/core/enums.dart';
import 'package:day_quote/app/domain/models/authors_model.dart';
import 'package:day_quote/app/domain/repositories/authors_repository.dart';
import 'package:day_quote/app/features/authors/cubit/authors_cubit.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockAuthorsRepository extends Mock implements AuthorsRepository {}

void main() {
  late MockAuthorsRepository repository;
  late AuthorsCubit sut;

  setUp(() {
    repository = MockAuthorsRepository();
    sut = AuthorsCubit(repository);
  });

  group('getAuthors', () {
    group('success', () {
      setUp(() {
        when(() => repository.getAuthorsModel(1)).thenAnswer((_) async => [
              AuthorsModel(1, 'story1', 'authorPhoto1', 'source1'),
              AuthorsModel(2, 'story2', 'authorPhoto2', 'source3'),
              AuthorsModel(3, 'story3', 'authorPhoto3', 'source3')
            ]);
      });
      blocTest<AuthorsCubit, AuthorsState>(
        'emits Status.loading then Status.success with results',
        build: () => sut,
        act: (cubit) => cubit.getAuthors(1),
        expect: () => [
          AuthorsState(
            status: Status.loading,
          ),
          AuthorsState(
            authorsModel: [
              AuthorsModel(1, 'story1', 'authorPhoto1', 'source1'),
              AuthorsModel(2, 'story2', 'authorPhoto2', 'source3'),
              AuthorsModel(3, 'story3', 'authorPhoto3', 'source3')
            ],
            status: Status.success,
          ),
        ],
      );
    });

    group('failure', () {
      setUp(() {
        when(() => repository.getAuthorsModel(1)).thenThrow(Exception(
          'test-exception-error',
        ));
      });
      blocTest<AuthorsCubit, AuthorsState>(
        'emits Status.loading then Status.error with errorMessage',
        build: () => sut,
        act: (cubit) => cubit.getAuthors(1),
        expect: () => [
          AuthorsState(
            status: Status.loading,
          ),
          AuthorsState(
            errorMessage: 'Exception: test-exception-error',
            status: Status.error,
          ),
        ],
      );
    });
  });
}
