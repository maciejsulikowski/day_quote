// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:day_quote/app/core/enums.dart';
import 'package:day_quote/app/domain/models/authors_model.dart';
import 'package:day_quote/app/domain/repositories/authors_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'authors_state.dart';
part 'authors_cubit.freezed.dart';

@injectable
class AuthorsCubit extends Cubit<AuthorsState> {
  AuthorsCubit(this._authorsRepository)
      : super(
          AuthorsState(),
        );

  final AuthorsRepository _authorsRepository;

  Future<void> getAuthors(int authorID) async {
    emit(AuthorsState(status: Status.loading));

    try {
      final results = await _authorsRepository.getAuthorsModel(authorID);
      emit(
        AuthorsState(
          authorsModel: results,
          status: Status.success,
        ),
      );
    } catch (error) {
      emit(
        AuthorsState(
          status: Status.error,
          errorMessage: error.toString(),
        ),
      );
    }
  }
}
