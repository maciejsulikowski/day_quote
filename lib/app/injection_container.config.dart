// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:day_quote/app/data/remote_data_sources/remote_auth_data_source.dart'
    as _i3;
import 'package:day_quote/app/data/remote_data_sources/remote_authors_data_source.dart'
    as _i7;
import 'package:day_quote/app/data/remote_data_sources/remote_quotes_data_source.dart'
    as _i8;
import 'package:day_quote/app/domain/repositories/auth_repository.dart' as _i4;
import 'package:day_quote/app/domain/repositories/authors_repository.dart'
    as _i9;
import 'package:day_quote/app/domain/repositories/quotes_repository.dart'
    as _i10;
import 'package:day_quote/app/features/auth/cubit/auth_cubit.dart' as _i5;
import 'package:day_quote/app/features/authors/cubit/authors_cubit.dart'
    as _i12;
import 'package:day_quote/app/features/quotes/cubit/quotes_cubit.dart' as _i13;
import 'package:day_quote/app/features/search/cubit/search_cubit.dart' as _i11;
import 'package:day_quote/app/injection_container.dart' as _i14;
import 'package:dio/dio.dart' as _i6;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final registerModule = _$RegisterModule();
    gh.factory<_i3.AuthRemoteDataSource>(() => _i3.AuthRemoteDataSource());
    gh.factory<_i4.AuthRepository>(
        () => _i4.AuthRepository(gh<_i3.AuthRemoteDataSource>()));
    gh.factory<String>(
      () => registerModule.baseUrl,
      instanceName: 'BaseUrl',
    );
    gh.factory<_i5.AuthCubit>(() => _i5.AuthCubit(gh<_i4.AuthRepository>()));
    gh.lazySingleton<_i6.Dio>(
        () => registerModule.dio(gh<String>(instanceName: 'BaseUrl')));
    gh.factory<_i7.RemoteAuthorsRetrofitDataSource>(
        () => _i7.RemoteAuthorsRetrofitDataSource(gh<_i6.Dio>()));
    gh.factory<_i8.RemoteQuotesRetrofitDataSource>(
        () => _i8.RemoteQuotesRetrofitDataSource(gh<_i6.Dio>()));
    gh.factory<_i9.AuthorsRepository>(
        () => _i9.AuthorsRepository(gh<_i7.RemoteAuthorsRetrofitDataSource>()));
    gh.factory<_i10.QuotesRepository>(
        () => _i10.QuotesRepository(gh<_i8.RemoteQuotesRetrofitDataSource>()));
    gh.factory<_i11.SearchCubit>(
        () => _i11.SearchCubit(gh<_i10.QuotesRepository>()));
    gh.factory<_i12.AuthorsCubit>(
        () => _i12.AuthorsCubit(gh<_i9.AuthorsRepository>()));
    gh.factory<_i13.QuotesCubit>(
        () => _i13.QuotesCubit(gh<_i10.QuotesRepository>()));
    return this;
  }
}

class _$RegisterModule extends _i14.RegisterModule {}
