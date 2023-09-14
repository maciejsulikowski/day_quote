import 'package:day_quote/app/data/remote_data_sources/remote_authors_data_source.dart';
import 'package:day_quote/app/domain/models/authors_model.dart';
import 'package:day_quote/app/domain/repositories/authors_repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockAuthorsDataSource extends Mock
    implements RemoteAuthorsRetrofitDataSource {}

void main() {
  late AuthorsRepository sut;
  late MockAuthorsDataSource dataSource;

  setUp(() {
    dataSource = MockAuthorsDataSource();
    sut = AuthorsRepository(dataSource);
  });

  group('getAuthorsModel', () {
    test('should call  _authorsDataSource.getAuthorsData', () async {
      //1
      when(() => dataSource.getAuthorsData()).thenAnswer((_) async => []);
      //2
      await sut.getAuthorsModel(1);
      //3
      verify(() => dataSource.getAuthorsData()).called(1);
    });
    test('should filter data source result with provided authorID', () async {
      //1
      when(() => dataSource.getAuthorsData()).thenAnswer((_) async => [
            AuthorsModel(1, 'story1', 'authorPhoto1', 'source1'),
            AuthorsModel(2, 'story2', 'authorPhoto2', 'source2'),
            AuthorsModel(3, 'story3', 'authorPhoto3', 'source3'),
          ]);
      //2
      final results = await sut.getAuthorsModel(1);
      //3
      expect(results, [
        AuthorsModel(1, 'story1', 'authorPhoto1', 'source1'),
      ]);
    });
  });
}
