import 'package:day_quote/app/domain/models/quotes_model.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'remote_quotes_data_source.g.dart';

@RestApi(baseUrl: "https://my-json-server.typicode.com/maciejsulikowski/json-demo/")
abstract class RemoteQuotesRetrofitDataSource {
  factory RemoteQuotesRetrofitDataSource(Dio dio, {String baseUrl}) = _RemoteQuotesRetrofitDataSource;

  @GET("/quotes")
  Future<List<QuotesModel>> getQuotesData();
}

// class RemoteQuotesDioDataSource {
//   Future<List<Map<String, dynamic>>?> getQuotesData() async {
//     final response = await Dio().get<List<dynamic>>(
//         'https://my-json-server.typicode.com/maciejsulikowski/json-demo/quotes');
//     final listDynamic = response.data;
//     if (listDynamic == null) {
//       return null;
//     }
//     return listDynamic.map((e) => e as Map<String, dynamic>).toList();
//   }

  
// }
