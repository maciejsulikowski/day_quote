import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:day_quote/app/core/enums.dart';
import 'package:day_quote/app/domain/models/quotes_model.dart';
import 'package:day_quote/app/domain/repositories/quotes_repository.dart';
import 'package:day_quote/app/features/search/cubit/search_state.dart';
import 'package:flutter/material.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchCubit(this._quotesRepository) : super(SearchState());

  final QuotesRepository _quotesRepository;
  final controller = TextEditingController();
  List<QuotesModel> allQuotesModel = [];

  Future<void> getQuotes() async {
    emit(SearchState(
      status: Status.loading,
    ));
    final results = await _quotesRepository.getQuotesModel();
    try {
      allQuotesModel = results;
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

  Future<void> updateList(String value) async {
    final filteredQuotesModel = allQuotesModel
        .where((quote) =>
            quote.authorName.toLowerCase().contains(value.toLowerCase()))
        .toList();
    emit(SearchState(
      quotesModel: filteredQuotesModel,
    ));
  }
}
