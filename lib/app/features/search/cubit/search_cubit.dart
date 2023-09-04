import 'package:bloc/bloc.dart';
import 'package:day_quote/app/core/enums.dart';
import 'package:day_quote/app/domain/models/authors_model.dart';
import 'package:day_quote/app/domain/models/quotes_model.dart';
import 'package:day_quote/app/domain/repositories/authors_repository.dart';
import 'package:day_quote/app/domain/repositories/quotes_repository.dart';
import 'package:meta/meta.dart';

part 'search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchCubit(this._authorsRepository, this._quotesRepository) : super(const SearchState());

  final AuthorsRepository _authorsRepository;
  final QuotesRepository _quotesRepository;

  Future<void> getAuthors(int authorID) async {
    emit(const SearchState(status: Status.loading));
    final results = await _authorsRepository.getAuthors(authorID);
    try {
      emit(
        SearchState(
          authorsModel: results,
          status: Status.success,
        ),
      );
    } catch (error) {
      emit(
        SearchState(
          status: Status.error,
          errorMessage: error.toString(),
        ),
      );
    }
  }
  Future<void> getAuthorsWithoutID() async {
    emit(const SearchState(status: Status.loading));
    final results = await _authorsRepository.getAuthorsWithoutID();
    try {
      emit(
        SearchState(
          authorsModel: results,
          status: Status.success,
        ),
      );
    } catch (error) {
      emit(
        SearchState(
          status: Status.error,
          errorMessage: error.toString(),
        ),
      );
    }
  }

  Future<void> getQuotes() async {
    emit(const SearchState(status: Status.loading));
    final results = await _quotesRepository.getQuotes();
    try {
      emit(
        SearchState(
          quotesModel: results,
          status: Status.success,
        ),
      );
    } catch (error) {
      emit(
        SearchState(
          status: Status.error,
          errorMessage: error.toString(),
        ),
      );
    }
  }
  
}
