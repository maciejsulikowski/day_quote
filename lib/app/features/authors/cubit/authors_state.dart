part of 'authors_cubit.dart';

@freezed
class AuthorsState with _$AuthorsState {
  factory AuthorsState({
    @Default([]) List<AuthorsModel> authorsModel,
    @Default(Status.initial) Status status,
    String? errorMessage,
  }) = _AuthorsState;
}

// @immutable
// class AuthorsState {
//   const AuthorsState({
//     this.authorsModel = const [],
//     this.status = Status.initial,
//     this.errorMessage,
//   });

//   final List<AuthorsModel> authorsModel;
//   final Status status;
//   final String? errorMessage;
// }
