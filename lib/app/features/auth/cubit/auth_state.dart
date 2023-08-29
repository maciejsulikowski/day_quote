part of 'auth_cubit.dart';

@immutable
class AuthState {
  const AuthState({
    required this.user,
    required this.status,
    this.errorMessage,
    
  });

  final User? user;
  final Status status;
  final String? errorMessage;
}
