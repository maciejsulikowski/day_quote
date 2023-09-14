import 'package:day_quote/app/core/enums.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_state.freezed.dart';

@freezed
class AuthState with _$AuthState {
  factory AuthState({
    User? user,
    @Default(Status.initial) Status status,
    String? errorMessage,
  }) = _AuthState;
}

// @immutable
// class AuthState {
//   const AuthState({
//     required this.user,
//     required this.status,
//     this.errorMessage,
    
//   });

//   final User? user;
//   final Status status;
//   final String? errorMessage;
// }
