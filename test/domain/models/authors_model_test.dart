
import 'package:day_quote/app/domain/models/authors_model.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('AuthorsModel', () {
    test('should create an instance of AuthorsModel from JSON', () {
      final json = {
        'author_id': 1,
        'bio': 'Sample bio',
        'picture': 'sample.jpg',
        'source': 'Sample source',
      };

      final authorsModel = AuthorsModel.fromJson(json);

      expect(authorsModel, isA<AuthorsModel>());
      expect(authorsModel.authorId, equals(1));
      expect(authorsModel.story, equals('Sample bio'));
      expect(authorsModel.authorPhoto, equals('sample.jpg'));
      expect(authorsModel.source, equals('Sample source'));
    });
  });
}





