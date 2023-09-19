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
