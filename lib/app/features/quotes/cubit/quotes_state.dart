part of 'quotes_cubit.dart';

@immutable
class QuotesState {
  const QuotesState({
    this.quotesModel = const [],
    this.status = Status.initial,
    this.errorMessage,
  });
  final List<QuotesModel> quotesModel;
  final Status status;
  final String? errorMessage;
}
