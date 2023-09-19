part of 'quotes_cubit.dart';

@freezed
class QuotesState with _$QuotesState {
  factory QuotesState({
    @Default([]) List<QuotesModel> quotesModel,
    @Default(Status.initial) Status status,
    String? errorMessage,
  }) = _QuotesState;
}


