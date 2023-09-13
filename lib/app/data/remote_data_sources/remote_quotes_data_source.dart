import 'package:dio/dio.dart';

class RemoteQuotesDioDataSource {
  Future<List<Map<String, dynamic>>?> getQuotesData() async {
    final response = await Dio().get<List<dynamic>>(
        'https://my-json-server.typicode.com/maciejsulikowski/json-demo/quotes');
    final listDynamic = response.data;
    if (listDynamic == null) {
      return null;
    }
    return listDynamic.map((e) => e as Map<String, dynamic>).toList();
  }

  
}
