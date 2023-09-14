import 'package:day_quote/app/domain/models/authors_model.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

part 'remote_authors_data_source.g.dart';
@injectable
@RestApi()
abstract class RemoteAuthorsRetrofitDataSource {
  @factoryMethod
  factory RemoteAuthorsRetrofitDataSource(Dio dio) =
      _RemoteAuthorsRetrofitDataSource;

  @GET("/stories")
  Future<List<AuthorsModel>> getAuthorsData();
}

// class RemoteAuthorsDioDataSource {
//   Future<List<Map<String, dynamic>>?> getAuthorsData() async {
//     final response = await Dio().get<List<dynamic>>(
//         'https://my-json-server.typicode.com/maciejsulikowski/json-demo/stories');
//     final listDynamic = response.data;

//     if (listDynamic == null) {
//       return null;
//     }

//     return listDynamic.map((e) => e as Map<String, dynamic>).toList();
//   }
// }
