part of 'search_cubit.dart';

@immutable
class SearchState {
  const SearchState({
    this.authorsModel = const [],
    this.quotesModel = const [],
    this.status = Status.initial,
    this.errorMessage,
  });

  final List<AuthorsModel> authorsModel;
  final List<QuotesModel> quotesModel;
  final Status status;
  final String? errorMessage;
}
