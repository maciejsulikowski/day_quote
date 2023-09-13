import 'package:bloc/bloc.dart';
import 'package:day_quote/app/core/enums.dart';
import 'package:day_quote/app/domain/models/quotes_model.dart';
import 'package:day_quote/app/domain/repositories/quotes_repository.dart';
import 'package:meta/meta.dart';

part 'quotes_state.dart';

class QuotesCubit extends Cubit<QuotesState> {
  QuotesCubit(this._quotesRepository) : super(const QuotesState());

  final QuotesRepository _quotesRepository;

  Future<void> getQuotes() async {
    emit(
      const QuotesState(
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
