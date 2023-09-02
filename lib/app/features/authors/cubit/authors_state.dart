part of 'authors_cubit.dart';

@immutable
class AuthorsState {
  const AuthorsState({
    required this.authorsModel,
    this.status = Status.initial,
    this.errorMessage,
  });

  final List<AuthorsModel> authorsModel;
  final Status status;
  final String? errorMessage;
}
