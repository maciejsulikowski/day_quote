import 'package:bloc/bloc.dart';
import 'package:day_quote/app/core/enums.dart';
import 'package:day_quote/app/domain/repositories/quotes_repository.dart';
import 'package:day_quote/app/features/quotes/cubit/quotes_state.dart';

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
