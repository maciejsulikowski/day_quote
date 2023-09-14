import 'package:day_quote/app/data/remote_data_sources/remote_auth_data_source.dart';
import 'package:day_quote/app/data/remote_data_sources/remote_authors_data_source.dart';
import 'package:day_quote/app/data/remote_data_sources/remote_quotes_data_source.dart';
import 'package:day_quote/app/domain/repositories/auth_repository.dart';
import 'package:day_quote/app/domain/repositories/authors_repository.dart';
import 'package:day_quote/app/domain/repositories/quotes_repository.dart';
import 'package:day_quote/app/features/auth/cubit/auth_cubit.dart';
import 'package:day_quote/app/features/authors/cubit/authors_cubit.dart';
import 'package:day_quote/app/features/quotes/cubit/quotes_cubit.dart';
import 'package:day_quote/app/features/search/cubit/search_cubit.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void configureDependencies() {
  //bloc
  getIt.registerFactory(() =>
      SearchCubit(getIt()));
  getIt.registerFactory(() =>
      QuotesCubit(getIt()));
  getIt.registerFactory(() =>
      AuthorsCubit(getIt()));
  getIt
      .registerFactory(() => AuthCubit(getIt()));

  //repo

  getIt.registerFactory(() => QuotesRepository(getIt()));
  getIt.registerFactory(() => QuotesRepository(getIt()));
  getIt.registerFactory(() => AuthorsRepository(getIt()));
  getIt.registerFactory(() => AuthRepository(getIt()));
}
