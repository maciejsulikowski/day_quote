// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'authors_model.g.dart';
part 'authors_model.freezed.dart';

@freezed
class AuthorsModel with _$AuthorsModel {
  factory AuthorsModel(
    @JsonKey(name: 'author_id') int authorId,
    @JsonKey(name: 'bio') String story,
    @JsonKey(name: 'picture') String authorPhoto,
    String source,
    
  ) = _AuthorsModel;
  

  factory AuthorsModel.fromJson(Map<String, dynamic> json) =>
      _$AuthorsModelFromJson(json);
}

// class AuthorsModel {
//   AuthorsModel({
//     required this.authorId,
//     required this.story,
//     required this.authorPhoto,
//     required this.source,
//   });
//   final int authorId;
//   final String story;
//   final String authorPhoto;
//   final String source;

//   AuthorsModel.fromJson(Map<String, dynamic> json)
//       : authorId = json['author_id'],
//         story = json['bio'],
//         authorPhoto = json['picture'],
//         source = json['source'];
// }
