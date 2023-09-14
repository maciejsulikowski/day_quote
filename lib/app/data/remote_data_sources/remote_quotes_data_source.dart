import 'package:day_quote/app/domain/models/quotes_model.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

part 'remote_quotes_data_source.g.dart';
@injectable
@RestApi()
abstract class RemoteQuotesRetrofitDataSource {
  @factoryMethod
  factory RemoteQuotesRetrofitDataSource(Dio dio) = _RemoteQuotesRetrofitDataSource;

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
