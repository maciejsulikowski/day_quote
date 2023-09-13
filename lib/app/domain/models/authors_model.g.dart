// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'authors_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AuthorsModel _$$_AuthorsModelFromJson(Map<String, dynamic> json) =>
    _$_AuthorsModel(
      json['author_id'] as int,
      json['bio'] as String,
      json['picture'] as String,
      json['source'] as String,
    );

Map<String, dynamic> _$$_AuthorsModelToJson(_$_AuthorsModel instance) =>
    <String, dynamic>{
      'author_id': instance.authorId,
      'bio': instance.story,
      'picture': instance.authorPhoto,
      'source': instance.source,
    };
