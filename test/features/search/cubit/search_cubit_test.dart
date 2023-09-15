import 'package:bloc_test/bloc_test.dart';
import 'package:day_quote/app/core/enums.dart';
import 'package:day_quote/app/domain/models/quotes_model.dart';
import 'package:day_quote/app/domain/repositories/quotes_repository.dart';
import 'package:day_quote/app/features/search/cubit/search_cubit.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockQuotesRepository extends Mock implements QuotesRepository {}

void main() {
  late SearchCubit sut;
  late MockQuotesRepository repository;

  setUp(() {
    repository = MockQuotesRepository();
    sut = SearchCubit(repository);
  });

  group('getQuotes', () {
    group('success', () {
      setUp(() {
        when(() => repository.getQuotesModel()).thenAnswer((_) async => [
              QuotesModel(1, 1, 'quote1', 'authorName1'),
              QuotesModel(2, 2, 'quote2', 'authorName2'),
              QuotesModel(3, 3, 'quote3', 'authorName3'),
            ]);
      });

      blocTest<SearchCubit, SearchState>(
        'emits Status.loading then Status.success with results',
        build: () => sut,
        act: (cubit) => cubit.getQuotes(),
        expect: () => [
          SearchState(status: Status.loading),
          SearchState(status: Status.success, quotesModel: [
            QuotesModel(1, 1, 'quote1', 'authorName1'),
            QuotesModel(2, 2, 'quote2', 'authorName2'),
            QuotesModel(3, 3, 'quote3', 'authorName3'),
          ])
        ],
      );
    });
  });

  group('failure', () {
    setUp(() {
      when(() => repository.getQuotesModel()).thenThrow(
        Exception('test-exception-error'),
      );
    });

    blocTest<SearchCubit, SearchState>(
      'emits Status.loading then Status.success with results',
      build: () => sut,
      act: (cubit) => cubit.getQuotes(),
      expect: () => [
        SearchState(
          status: Status.loading,
        ),
        SearchState(
            status: Status.error,
            errorMessage: 'Exception: test-exception-error')
      ],
    );
  });

  group('updateList', () {
    group('success', () {
      setUp(() {
        when(() => repository.getQuotesModel()).thenAnswer((_) async => [
              QuotesModel(1, 1, 'quote1', 'authorName1'),
              QuotesModel(2, 2, 'quote2', 'authorName2'),
              QuotesModel(3, 3, 'quote3', 'authorName3'),
            ]);
      });

      blocTest<SearchCubit, SearchState>(
        'emits quotesModel with filteredQuotesModel',
        build: () {
          sut.allQuotesModel = [
            QuotesModel(1, 1, 'quote1', 'authorName1'),
            QuotesModel(2, 2, 'quote2', 'authorName2'),
            QuotesModel(3, 3, 'quote3', 'authorName3'),
          ];
          return sut;
        },
        act: (cubit) {
          cubit.updateList('authorName1');
        },
        expect: () => [
          SearchState(
            quotesModel: [
              QuotesModel(1, 1, 'quote1', 'authorName1'),
            ],
          )
        ],
      );
    });

    group('failure', () {
      setUp(() {
        when(() => repository.getQuotesModel()).thenAnswer((_) async => [
              QuotesModel(1, 1, 'quote1', 'authorName1'),
              QuotesModel(2, 2, 'quote2', 'authorName2'),
              QuotesModel(3, 3, 'quote3', 'authorName3'),
            ]);
      });

      blocTest<SearchCubit, SearchState>(
        'emits empty quotesModel',
        build: () {
          sut.allQuotesModel = [
            QuotesModel(1, 1, 'quote1', 'authorName1'),
            QuotesModel(2, 2, 'quote2', 'authorName2'),
            QuotesModel(3, 3, 'quote3', 'authorName3'),
          ];
          return sut;
        },
        act: (cubit) {
          cubit.updateList('Unknown author');
        },
        expect: () => [
          SearchState(
            quotesModel: [],
          )
        ],
      );
    });
  });
}
