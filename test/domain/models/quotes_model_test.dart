import 'package:day_quote/app/domain/models/quotes_model.dart';
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
}
