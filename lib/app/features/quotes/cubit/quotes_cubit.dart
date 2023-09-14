import 'package:bloc/bloc.dart';
import 'package:day_quote/app/core/enums.dart';
import 'package:day_quote/app/domain/models/quotes_model.dart';
import 'package:day_quote/app/domain/repositories/quotes_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'quotes_state.dart';
part 'quotes_cubit.freezed.dart';

class QuotesCubit extends Cubit<QuotesState> {
  QuotesCubit(this._quotesRepository) : super(QuotesState());

  final QuotesRepository _quotesRepository;

  Future<void> getQuotes() async {
    emit(
      QuotesState(
        status: Status.loading,
      ),
    );
    final quotesModel = await _quotesRepository.getQuotesModel();
    try {
      emit(QuotesState(
        quotesModel: quotesModel,
        status: Status.success,
      ));
    } catch (error) {
      emit(
        QuotesState(
          errorMessage: error.toString(),
        ),
      );
    }
  }
}
