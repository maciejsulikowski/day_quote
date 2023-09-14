import 'package:day_quote/app/injection_container.config.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

final getIt = GetIt.instance;

@InjectableInit()
void configureDependencies() => getIt.init();

@module
abstract class RegisterModule {
  
  @Named("BaseUrl")
  String get baseUrl =>
      'https://my-json-server.typicode.com/maciejsulikowski/json-demo/';

  
  @lazySingleton
  Dio dio(@Named('BaseUrl') String url) => Dio(BaseOptions(baseUrl: url));
}
// void configureDependencies() {
//   //bloc

//   getIt.registerFactory(() => SearchCubit(getIt()));
//   getIt.registerFactory(() => QuotesCubit(getIt()));
//   getIt.registerFactory(() => AuthorsCubit(getIt()));
//   getIt.registerFactory(() => AuthCubit(getIt()));

//   //repo

//   getIt.registerFactory(() => QuotesRepository(getIt()));
//   getIt.registerFactory(() => AuthorsRepository(getIt()));
//   getIt.registerFactory(() => AuthRepository(getIt()));

//   //datasource

//   getIt.registerFactory(() => RemoteQuotesRetrofitDataSource(Dio()));
//   getIt.registerFactory(() => RemoteAuthorsRetrofitDataSource(Dio()));
//   getIt.registerFactory(() => AuthRemoteDataSource());
// }
