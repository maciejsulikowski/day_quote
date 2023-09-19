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

