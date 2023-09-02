import 'package:dio/dio.dart';

class RemoteAuthorsDataSource {
  Future<List<Map<String, dynamic>>?> getAuthorsData() async {
    final response = await Dio().get<List<dynamic>>(
        'https://my-json-server.typicode.com/maciejsulikowski/json-demo/stories');
    final listDynamic = response.data;

    if (listDynamic == null) {
      return null;
    }

    return listDynamic.map((e) => e as Map<String, dynamic>).toList();
  }
}
