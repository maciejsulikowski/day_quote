import 'package:firebase_auth/firebase_auth.dart';

class AuthRemoteDataSource {
  Stream<User?> getUserData() {
    return FirebaseAuth.instance.authStateChanges();
  }
}
