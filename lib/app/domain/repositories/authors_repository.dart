import 'package:day_quote/app/data/remote_data_sources/remote_authors_data_source.dart';
import 'package:day_quote/app/domain/models/authors_model.dart';

class AuthorsRepository {
  AuthorsRepository(this._authorsDataSource);

  final RemoteAuthorsDataSource _authorsDataSource;

  Future<List<AuthorsModel>> getAuthors() async {
    final json = await _authorsDataSource.getAuthorsData();

    return json.map((item) => AuthorsModel.fromJson(item)).toList();
  }
}
