import 'package:bloc_test/bloc_test.dart';
import 'package:day_quote/app/core/enums.dart';
import 'package:day_quote/app/domain/models/quotes_model.dart';
import 'package:day_quote/app/domain/repositories/quotes_repository.dart';
import 'package:day_quote/app/features/quotes/cubit/quotes_cubit.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockQuotesRepository extends Mock implements QuotesRepository {}

void main() {
  late MockQuotesRepository repository;
  late QuotesCubit sut;

  setUp(() {
    repository = MockQuotesRepository();
    sut = QuotesCubit(repository);
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
      blocTest<QuotesCubit, QuotesState>(
        'emits Status.loading then Status.success with quotesModel',
        build: () => sut,
        act: (cubit) => cubit.getQuotes(),
        expect: () => [
          QuotesState(
            status: Status.loading,
          ),
          QuotesState(
            quotesModel: [
              QuotesModel(1, 1, 'quote1', 'authorName1'),
              QuotesModel(2, 2, 'quote2', 'authorName2'),
              QuotesModel(3, 3, 'quote3', 'authorName3'),
            ],
            status: Status.success,
          )
        ],
      );
    });

    group('failure', () {
      setUp(() {
        when(() => repository.getQuotesModel())
            .thenThrow(Exception('test-exception-error'));
      });
      blocTest<QuotesCubit, QuotesState>(
        'emits Status.loading then Status.error with errorMessage',
        build: () => sut,
        act: (cubit) => cubit.getQuotes(),
        expect: () => [
          QuotesState(
            status: Status.loading,
          ),
          QuotesState(
            errorMessage: 'Exception: test-exception-error',
            status: Status.error,
          )
        ],
      );
    });
  });
}
