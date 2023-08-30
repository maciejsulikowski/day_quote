import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'authors_state.dart';

class AuthorsCubit extends Cubit<AuthorsState> {
  AuthorsCubit()
      : super(
          const AuthorsState(
            authorId: 1,
            story: 'story',
            authorName: 'authorName',
            authorPhoto: 'authorPhoto',
          ),
        );

        
}
