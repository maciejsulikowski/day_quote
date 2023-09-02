part of 'authors_cubit.dart';

@immutable
class AuthorsState {
  const AuthorsState({
    this.authorsModel = const [],
    this.status = Status.initial,
    this.errorMessage,
  });

  final List<AuthorsModel> authorsModel;
  final Status status;
  final String? errorMessage;
}
