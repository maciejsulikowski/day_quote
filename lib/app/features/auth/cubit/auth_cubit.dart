import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:day_quote/app/core/enums.dart';
import 'package:day_quote/app/domain/repositories/auth_repository.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'auth_state.dart';
part 'auth_cubit.freezed.dart';

@injectable
class AuthCubit extends Cubit<AuthState> {
  AuthCubit(this._authRepository)
      : super(
          AuthState(
            status: Status.loading,
            user: null,
          ),
        );

  final AuthRepository _authRepository;
  StreamSubscription? _streamSubscription;

  Future<void> start() async {
    emit(AuthState(
      user: null,
      status: Status.loading,
    ));

    _streamSubscription = _authRepository.getUser().listen((user) {
      emit(
        AuthState(
          user: user,
          status: Status.success,
        ),
      );
    })
      ..onError((error) {
        emit(
          AuthState(
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
