// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'quotes_model.g.dart';
part 'quotes_model.freezed.dart';

@freezed
class QuotesModel with _$QuotesModel {
  factory QuotesModel(
    int id,
    @JsonKey(name: 'author_id') int authorId,
    @JsonKey(name: 'content') String quote,
    @JsonKey(name: 'author_name') String authorName,
  ) = _QuotesModel;

  factory QuotesModel.fromJson(Map<String, dynamic> json) =>
      _$QuotesModelFromJson(json);
}

// class QuotesModel {
//   QuotesModel({
//     required this.id,
//     required this.authorId,
//     required this.quote,
//     required this.authorName,
//   });
//   final int id;
//   final int authorId;
//   final String quote;
//   final String authorName;

//   QuotesModel.fromJson(Map<String, dynamic> json)
//       : id = json['id'],
//         authorId = json['author_id'],
//         quote = json['content'],
//         authorName = json['author_name'];
// }
