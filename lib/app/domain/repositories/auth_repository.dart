import 'package:day_quote/app/data/remote_data_sources/remote_auth_data_source.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';


@injectable
class AuthRepository {
  AuthRepository(this._authRemoteDataSource);

  final AuthRemoteDataSource _authRemoteDataSource;

  Stream<User?> getUser() {
    return _authRemoteDataSource.getUserData();
  }
}
