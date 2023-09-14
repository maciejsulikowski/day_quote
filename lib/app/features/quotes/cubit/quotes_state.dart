import 'package:day_quote/app/core/enums.dart';
import 'package:day_quote/app/domain/models/quotes_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'quotes_state.freezed.dart';

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
