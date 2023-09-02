import 'package:day_quote/app/data/remote_data_sources/remote_quotes_data_source.dart';
import 'package:day_quote/app/domain/models/quotes_model.dart';

class QuotesRepository {
  QuotesRepository(this._remoteQuotesDataSource);

  final RemoteQuotesDataSource _remoteQuotesDataSource;

  Future<List<QuotesModel>> getQuotes() async {
    final json = await _remoteQuotesDataSource.getQuotesData();
    if (json == null) {
      return [];
    }

    return json.map((item) => QuotesModel.fromJson(item)).toList();
  }
}
