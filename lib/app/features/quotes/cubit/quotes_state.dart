

part of 'quotes_cubit.dart';

@freezed
class QuotesState with _$QuotesState {
  factory QuotesState({
    @Default([]) List<QuotesModel> quotesModel,
    @Default(Status.initial) Status status,
    String? errorMessage,
  }) = _QuotesState;
}


// @immutable
// class QuotesState {
//   const QuotesState({
//     this.quotesModel = const [],
//     this.status = Status.initial,
//     this.errorMessage,
//   });
//   final List<QuotesModel> quotesModel;
//   final Status status;
//   final String? errorMessage;
// }
