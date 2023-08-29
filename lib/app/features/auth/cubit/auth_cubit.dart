import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:day_quote/app/core/enums.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:meta/meta.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit()
      : super(
          const AuthState(
            status: Status.loading,
            user: null,
          ),
        );

  StreamSubscription? _streamSubscription;

  Future<void> start() async {
    emit(const AuthState(
      user: null,
      status: Status.loading,
    ));

    _streamSubscription =
        FirebaseAuth.instance.authStateChanges().listen((user) {
      emit(
        AuthState(
          user: user,
          status: Status.success,
        ),
      );
    })
          ..onError((error) {
            emit(
              const AuthState(
                user: null,
                status: Status.error,
              ),
            );
          });
  }

  @override
  Future<void> close() {
    _streamSubscription?.cancel();
    return super.close();
  }
}
