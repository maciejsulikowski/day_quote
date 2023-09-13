import 'package:bloc/bloc.dart';
import 'package:day_quote/app/core/enums.dart';
import 'package:day_quote/app/domain/models/authors_model.dart';
import 'package:day_quote/app/domain/repositories/authors_repository.dart';
import 'package:meta/meta.dart';

part 'authors_state.dart';

class AuthorsCubit extends Cubit<AuthorsState> {
  AuthorsCubit(this._authorsRepository)
      : super(
          const AuthorsState(),
        );

  final AuthorsRepository _authorsRepository;

  Future<void> getAuthors(int authorID) async {
    emit(const AuthorsState(status: Status.loading));
    final results = await _authorsRepository.getAuthorsModel(authorID);
    try {
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
