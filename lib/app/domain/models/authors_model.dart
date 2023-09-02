class AuthorsModel {
  AuthorsModel({
    required this.authorId,
    required this.story,
    required this.authorPhoto,
    required this.source,
  });
  final int authorId;
  final String story;
  final String authorPhoto;
  final String source;

  AuthorsModel.fromJson(Map<String, dynamic> json)
      : authorId = json['author_id'],
        story = json['bio'],
        authorPhoto = json['picture'],
        source = json['source'];
}
