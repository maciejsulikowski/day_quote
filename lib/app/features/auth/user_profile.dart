
import 'package:firebase_ui_auth/firebase_ui_auth.dart' as firebase_ui_auth;
import 'package:flutter/material.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple[200],
      ),
      body: firebase_ui_auth.ProfileScreen(
        providers: [
          firebase_ui_auth.EmailAuthProvider(),
        ],
        actions: [
          firebase_ui_auth.SignedOutAction(
            (context) {
              Navigator.of(context).pop();
            },
          ),
        ],
        avatarSize: 48,
      ),
    );
  }
}
