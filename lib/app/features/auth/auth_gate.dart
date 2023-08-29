import 'package:day_quote/app/features/my_account/my_account_page_content.dart';
import 'package:day_quote/app/features/home/home_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_ui_auth/firebase_ui_auth.dart' as firebase_ui_auth;
import 'package:flutter/material.dart';
import 'package:firebase_ui_firestore/firebase_ui_firestore.dart'
    as firebase_core;

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
        return HomePage(
          user: snapshot.data!,
        );
      },
    );
  }
}
