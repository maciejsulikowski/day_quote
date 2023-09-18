import 'package:day_quote/app/domain/models/quotes_model.dart';
import 'package:day_quote/app/features/quotes/cubit/quotes_cubit.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('QuotesModel', () {
    test('should create instance QuotesModel from JSON', () {
      final json = {
        'id': 1,
        'author_id': 1,
        'content': 'Sample_content',
        'author_name': 'Sample_author',
      };

      final quotesModel = QuotesModel.fromJson(json);

      expect(quotesModel, isA<QuotesModel>());
      expect(quotesModel.authorId, equals(1));
      expect(quotesModel.id, equals(1));
      expect(quotesModel.quote, equals('Sample_content'));
      expect(quotesModel.authorName, equals('Sample_author'));
    });
  });
  test('should check equality of QuotesModel instances', () {
    final quotesModel1 = QuotesModel(1, 1, 'Sample_content', 'Sample_author');
    final quotesModel2 = QuotesModel(1, 1, 'Sample_content', 'Sample_author');

    expect(quotesModel1, equals(quotesModel2));
  });
  test('should throw an exception for invalid JSON data', () {
    final json = {
      'id': 1,
      'content': 'Sample_content',
    };

    expect(() => QuotesModel.fromJson(json), throwsA(isA<Error>()));
  });

  test('should check inequality of different QuotesModel instances', () {
    final quotesModel1 = QuotesModel(1, 1, 'Sample_content', 'Sample_author');
    final quotesModel2 = QuotesModel(1, 1, 'Another_content', 'Another_author');

    expect(quotesModel1, isNot(equals(quotesModel2)));
  });

  test('should allow zero id', () {
    final quotesModel = QuotesModel(0, 1, 'Sample_content', 'Sample_author');
    expect(quotesModel.id, equals(0));
  });

  test('should allow empty quote', () {
    final quotesModel = QuotesModel(1, 1, '', 'Sample_author');
    expect(quotesModel.quote, equals(''));
  });

  test('should allow empty authorName', () {
    final quotesModel = QuotesModel(1, 1, 'Sample_content', '');
    expect(quotesModel.authorName, equals(''));
  });

  test('should allow empty authorId', () {
    final quotesModel = QuotesModel(1, 0, 'Sample_content', 'Sample_author');
    expect(quotesModel.authorId, equals(0));
  });

 

}
