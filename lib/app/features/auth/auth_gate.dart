import 'package:day_quote/app/features/auth/cubit/auth_cubit.dart';
import 'package:day_quote/app/features/home/home_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_ui_auth/firebase_ui_auth.dart' as firebase_ui_auth;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthGate extends StatelessWidget {
  const AuthGate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthCubit(),
      child: BlocBuilder<AuthCubit, AuthState>(
        builder: (context, state) {
          return StreamBuilder<User?>(
            stream: FirebaseAuth.instance.authStateChanges(),
            initialData: FirebaseAuth.instance.currentUser,
            builder: (context, snapshot) {
              final user = snapshot.data;
              if (!snapshot.hasData) {
                return firebase_ui_auth.SignInScreen(
                  providers: [
                    firebase_ui_auth.EmailAuthProvider(),
                  ],
                );
              }
              return HomePage(
                currentUser: user!,
              );
            },
          );
        },
      ),
    );
  }
}
