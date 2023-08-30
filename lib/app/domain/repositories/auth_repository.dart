import 'package:firebase_auth/firebase_auth.dart';

class AuthRepository {
    
  Stream<User?> getUser() {
    return FirebaseAuth.instance.authStateChanges();
  }
}
