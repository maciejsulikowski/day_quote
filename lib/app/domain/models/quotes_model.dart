class QuotesModel {
  QuotesModel({
    required this.id,
    required this.authorId,
    required this.quote,
    required this.authorName,
  });
  final int id;
  final int authorId;
  final String quote;
  final String authorName;

  QuotesModel.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        authorId = json['author_id'],
        quote = json['content'],
        authorName = json['author_name'];
}
