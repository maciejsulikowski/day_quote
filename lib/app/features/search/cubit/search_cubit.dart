import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:day_quote/app/core/enums.dart';
import 'package:day_quote/app/domain/models/authors_model.dart';
import 'package:day_quote/app/domain/models/quotes_model.dart';
import 'package:day_quote/app/domain/repositories/authors_repository.dart';
import 'package:day_quote/app/domain/repositories/quotes_repository.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  SearchCubit(this._authorsRepository, this._quotesRepository)
      : super(const SearchState());

  final AuthorsRepository _authorsRepository;
  final QuotesRepository _quotesRepository;
  final controller = TextEditingController();
  List<QuotesModel> allQuotesModel = [];

  Future<void> getAuthors(int authorID) async {
    emit(const SearchState(
      status: Status.loading,
    ));
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

  Future<void> getQuotes() async {
    emit(const SearchState(
      status: Status.loading,
    ));
    final results = await _quotesRepository.getQuotes();
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
