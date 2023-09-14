import 'package:day_quote/app/data/remote_data_sources/remote_quotes_data_source.dart';
import 'package:day_quote/app/domain/models/quotes_model.dart';
import 'package:injectable/injectable.dart';

@injectable
class QuotesRepository {
  QuotesRepository(this._remoteQuotesDataSource);

  final RemoteQuotesRetrofitDataSource _remoteQuotesDataSource;

  Future<List<QuotesModel>> getQuotesModel() async {
    return _remoteQuotesDataSource.getQuotesData();
    // if (json == null) {
    //   return [];
    // }

    // return json.map((item) => QuotesModel.fromJson(item)).toList();
  }
}
