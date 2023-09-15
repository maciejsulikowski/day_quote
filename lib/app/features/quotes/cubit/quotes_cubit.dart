import 'package:bloc/bloc.dart';
import 'package:day_quote/app/core/enums.dart';
import 'package:day_quote/app/domain/models/quotes_model.dart';
import 'package:day_quote/app/domain/repositories/quotes_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'quotes_state.dart';
part 'quotes_cubit.freezed.dart';

@injectable
class QuotesCubit extends Cubit<QuotesState> {
  QuotesCubit(this._quotesRepository) : super(QuotesState());

  final QuotesRepository _quotesRepository;

  Future<void> getQuotes() async {
    emit(
      QuotesState(
        status: Status.loading,
      ),
    );

    try {
      final quotesModel = await _quotesRepository.getQuotesModel();
      emit(QuotesState(
        quotesModel: quotesModel,
        status: Status.success,
      ));
    } catch (error) {
      emit(
        QuotesState(
          errorMessage: error.toString(),
          status: Status.error,
        ),
      );
    }
  }
}
