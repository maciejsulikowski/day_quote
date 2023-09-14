
part of 'search_cubit.dart';

@freezed
class SearchState with _$SearchState {
  factory SearchState({
    @Default([]) List<QuotesModel> quotesModel,
    @Default([]) List<AuthorsModel> authorsModel,
    @Default(Status.initial) Status status,
    String? errorMessage,
  }) = _SearchState;
}

// @immutable
// class SearchState {
//   const SearchState({
//     this.authorsModel = const [],
//     this.quotesModel = const [],
//     this.status = Status.initial,
//     this.errorMessage,
//   });

//   final List<AuthorsModel> authorsModel;
//   final List<QuotesModel> quotesModel;
//   final Status status;
//   final String? errorMessage;
// }
