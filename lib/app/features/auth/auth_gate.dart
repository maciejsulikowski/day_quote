import 'package:day_quote/app/core/enums.dart';
import 'package:day_quote/app/features/auth/cubit/auth_cubit.dart';
import 'package:day_quote/app/features/home/home_page.dart';
import 'package:day_quote/app/injection_container.dart';
import 'package:firebase_ui_auth/firebase_ui_auth.dart' as firebase_ui_auth;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthGate extends StatelessWidget {
  const AuthGate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<AuthCubit>()..start(),
      child: BlocConsumer<AuthCubit, AuthState>(
        listener: (context, state) {
          if (state.status == Status.error) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                behavior: SnackBarBehavior.floating,
                backgroundColor: Colors.red,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                content: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Row(
                    children: [
                      const Icon(Icons.error, color: Colors.white),
                      const SizedBox(width: 8),
                      Text(state.errorMessage ?? 'Unknown error'),
                    ],
                  ),
                ),
              ),
            );
          }
        },
        builder: (context, state) {
          final user = state.user;

          if (state.status == Status.loading) {
            const Center(child: CircularProgressIndicator());
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
        },
      ),
    );
  }
}
