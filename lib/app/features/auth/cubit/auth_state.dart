



part of 'auth_cubit.dart';

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
