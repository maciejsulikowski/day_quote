import 'package:bloc/bloc.dart';
import 'package:day_quote/app/core/enums.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:meta/meta.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit()
      : super(
          const AuthState(
            status: Status.loading,
            errorMessage: 'errorMessage',
            user: null,
          ),
        );

  Future<void> start() async {
    emit(
      const AuthState(
        status: Status.loading,
        errorMessage: 'errorMessage',
        user: null,
      ),
    );
  }
}
