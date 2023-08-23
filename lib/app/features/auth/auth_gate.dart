import 'package:day_quote/app/features/home/home_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_ui_auth/firebase_ui_auth.dart' as firebase_ui_auth;
import 'package:flutter/material.dart';

class AuthGate extends StatelessWidget {
  const AuthGate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
      stream: FirebaseAuth.instance.authStateChanges(),
      initialData: FirebaseAuth.instance.currentUser,
      builder: (context, snapshot) {
        // User is not signed in
        if (!snapshot.hasData) {
          return firebase_ui_auth.SignInScreen(
            providers: [
              firebase_ui_auth.EmailAuthProvider(),
            ],
          );
        }

        // Render your application if authenticated
        return const HomePage();
      },
    );
  }
}
