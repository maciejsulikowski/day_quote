part of 'authors_cubit.dart';

@freezed
class AuthorsState with _$AuthorsState {
  factory AuthorsState({
    @Default([]) List<AuthorsModel> authorsModel,
    @Default(Status.initial) Status status,
    String? errorMessage,
  }) = _AuthorsState;
}
