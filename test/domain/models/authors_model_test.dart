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

  test('should check equality of Authors instances', () {
    final quotesModel1 =
        AuthorsModel(1, 'Sample bio', 'sample.jpg', 'Sample source');
    final quotesModel2 =
        AuthorsModel(1, 'Sample bio', 'sample.jpg', 'Sample source');

    expect(quotesModel1, equals(quotesModel2));
  });
  test('should throw an exception for invalid JSON data', () {
    final json = {
      'bio': 'Sample_bio',
    };

    expect(() => AuthorsModel.fromJson(json), throwsA(isA<Error>()));
  });

  test('should check inequality of different AuthorsModel instances', () {
    final authorsModel1 =
        AuthorsModel(1, 'Sample bio', 'sample.jpg', 'Sample source');
    final authorsModel2 =
        AuthorsModel(2, 'Another bio', 'another.jpg', 'Another source');

    expect(authorsModel1, isNot(equals(authorsModel2)));
  });

  test('should allow zero author_id', () {
    final authorsModel =
        AuthorsModel(0, 'Sample bio', 'sample.jpg', 'Sample source');
    expect(authorsModel.authorId, equals(0));
  });

  test('should allow empty bio', () {
    final authorsModel = AuthorsModel(0, '', 'sample.jpg', 'Sample source');
    expect(authorsModel.story, equals(''));
  });

  test('should allow empty source', () {
    final authorsModel = AuthorsModel(1, 'Sample bio', 'sample.jpg', '');
    expect(authorsModel.source, equals(''));
  });

  test('should allow empty jpg', () {
    final authorsModel = AuthorsModel(1, 'Sample bio', '', 'Sample source');
    expect(authorsModel.authorPhoto, equals(''));
  });
  
}
