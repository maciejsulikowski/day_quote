import 'package:day_quote/app/data/remote_data_sources/remote_authors_data_source.dart';
import 'package:day_quote/app/domain/models/authors_model.dart';
import 'package:injectable/injectable.dart';

@injectable
class AuthorsRepository {
  AuthorsRepository(this._authorsDataSource);

  final RemoteAuthorsRetrofitDataSource _authorsDataSource;

  Future<List<AuthorsModel>> getAuthorsModel(int authorID) async {
    final authorsData = await _authorsDataSource.getAuthorsData();

    return authorsData
        .where((element) => element.authorId == authorID)
        .toList();
  }
}
