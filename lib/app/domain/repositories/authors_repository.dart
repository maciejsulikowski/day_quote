import 'package:day_quote/app/data/remote_data_sources/remote_authors_data_source.dart';
import 'package:day_quote/app/domain/models/authors_model.dart';

class AuthorsRepository {
  AuthorsRepository(this._authorsDataSource);

  final RemoteAuthorsDioDataSource _authorsDataSource;

  Future<List<AuthorsModel>> getAuthorsModel(int authorID) async {
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
}
