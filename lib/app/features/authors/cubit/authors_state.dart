part of 'authors_cubit.dart';

@immutable
class AuthorsState {
  const AuthorsState({
    required this.authorId,
    required this.story,
    required this.authorName,
    required this.authorPhoto,
  });
  final int authorId;
  final String story;
  final String authorName;
  final String authorPhoto;
}
