import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';


@injectable
class AuthRemoteDataSource {
  Stream<User?> getUserData() {
    return FirebaseAuth.instance.authStateChanges();
  }
}
