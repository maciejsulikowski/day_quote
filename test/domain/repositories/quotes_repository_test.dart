import 'package:day_quote/app/data/remote_data_sources/remote_quotes_data_source.dart';
import 'package:day_quote/app/domain/repositories/quotes_repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockQuotesDataSource extends Mock
    implements RemoteQuotesRetrofitDataSource {}

void main() {
  late MockQuotesDataSource dataSource;
  late QuotesRepository sut;

  setUp(() {
    dataSource = MockQuotesDataSource();
    sut = QuotesRepository(dataSource);
  });

  group('getQuotesModel', () {
    test('should call _remoteQuotesDataSource.getQuotesData ', () async {
      //1
      when(() => dataSource.getQuotesData()).thenAnswer((_) async => []);
      //2
      await sut.getQuotesModel();
      //3
      verify(() => dataSource.getQuotesData()).called(1);
    });
  });
}
