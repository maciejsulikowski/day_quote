import 'package:day_quote/app/data/remote_data_sources/remote_authors_data_source.dart';
import 'package:day_quote/app/domain/models/authors_model.dart';

class AuthorsRepository {
  AuthorsRepository(this._authorsDataSource);

  final RemoteAuthorsDataSource _authorsDataSource;

  Future<List<AuthorsModel>> getAuthors(int authorID) async {
    final json = await _authorsDataSource.getAuthorsData();

    if (json == null) {
      return [];
    }

    final authorsData =
        json.map((item) => AuthorsModel.fromJson(item)).toList();

    return authorsData
        .where((element) => element.authorId == authorID)
        .toList();
  }

  Future<List<AuthorsModel>> getAuthorsWithoutID() async {
    final json = await _authorsDataSource.getAuthorsData();

    if (json == null) {
      return [];
    }

    return json.map((item) => AuthorsModel.fromJson(item)).toList();
  }
}
