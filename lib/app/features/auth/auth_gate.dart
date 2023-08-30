import 'package:day_quote/app/core/enums.dart';
import 'package:day_quote/app/features/auth/cubit/auth_cubit.dart';
import 'package:day_quote/app/features/home/home_page.dart';
import 'package:firebase_ui_auth/firebase_ui_auth.dart' as firebase_ui_auth;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthGate extends StatelessWidget {
  const AuthGate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthCubit()..start(),
      child: BlocBuilder<AuthCubit, AuthState>(
        builder: (context, state) {
          final user = state.user;
          if (state.status == Status.loading) {
            return const CircularProgressIndicator();
          }
          if (state.status == Status.error) {
            return Text(state.errorMessage ?? 'Unknown error');
          }

          if (user == null) {
            return firebase_ui_auth.SignInScreen(
              providers: [
                firebase_ui_auth.EmailAuthProvider(),
              ],
            );
          }
          return HomePage(
            user: user,
          );
          // return StreamBuilder<User?>(
          //   stream: FirebaseAuth.instance.authStateChanges(),
          //   initialData: FirebaseAuth.instance.currentUser,
          //   builder: (context, snapshot) {
          //     // User is not signed in
          //     if (!snapshot.hasData) {
          //       return firebase_ui_auth.SignInScreen(
          //         providers: [
          //           firebase_ui_auth.EmailAuthProvider(),
          //         ],
          //       );
          //     }
          //     return HomePage(
          //       user: snapshot.data!,
          //     );
          //   },
          // );
        },
      ),
    );
  }
}
