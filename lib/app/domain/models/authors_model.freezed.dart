// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'authors_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AuthorsModel _$AuthorsModelFromJson(Map<String, dynamic> json) {
  return _AuthorsModel.fromJson(json);
}

/// @nodoc
mixin _$AuthorsModel {
  @JsonKey(name: 'author_id')
  int get authorId => throw _privateConstructorUsedError;
  @JsonKey(name: 'bio')
  String get story => throw _privateConstructorUsedError;
  @JsonKey(name: 'picture')
  String get authorPhoto => throw _privateConstructorUsedError;
  String get source => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthorsModelCopyWith<AuthorsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthorsModelCopyWith<$Res> {
  factory $AuthorsModelCopyWith(
          AuthorsModel value, $Res Function(AuthorsModel) then) =
      _$AuthorsModelCopyWithImpl<$Res, AuthorsModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'author_id') int authorId,
      @JsonKey(name: 'bio') String story,
      @JsonKey(name: 'picture') String authorPhoto,
      String source});
}

/// @nodoc
class _$AuthorsModelCopyWithImpl<$Res, $Val extends AuthorsModel>
    implements $AuthorsModelCopyWith<$Res> {
  _$AuthorsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? authorId = null,
    Object? story = null,
    Object? authorPhoto = null,
    Object? source = null,
  }) {
    return _then(_value.copyWith(
      authorId: null == authorId
          ? _value.authorId
          : authorId // ignore: cast_nullable_to_non_nullable
              as int,
      story: null == story
          ? _value.story
          : story // ignore: cast_nullable_to_non_nullable
              as String,
      authorPhoto: null == authorPhoto
          ? _value.authorPhoto
          : authorPhoto // ignore: cast_nullable_to_non_nullable
              as String,
      source: null == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AuthorsModelCopyWith<$Res>
    implements $AuthorsModelCopyWith<$Res> {
  factory _$$_AuthorsModelCopyWith(
          _$_AuthorsModel value, $Res Function(_$_AuthorsModel) then) =
      __$$_AuthorsModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'author_id') int authorId,
      @JsonKey(name: 'bio') String story,
      @JsonKey(name: 'picture') String authorPhoto,
      String source});
}

/// @nodoc
class __$$_AuthorsModelCopyWithImpl<$Res>
    extends _$AuthorsModelCopyWithImpl<$Res, _$_AuthorsModel>
    implements _$$_AuthorsModelCopyWith<$Res> {
  __$$_AuthorsModelCopyWithImpl(
      _$_AuthorsModel _value, $Res Function(_$_AuthorsModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? authorId = null,
    Object? story = null,
    Object? authorPhoto = null,
    Object? source = null,
  }) {
    return _then(_$_AuthorsModel(
      null == authorId
          ? _value.authorId
          : authorId // ignore: cast_nullable_to_non_nullable
              as int,
      null == story
          ? _value.story
          : story // ignore: cast_nullable_to_non_nullable
              as String,
      null == authorPhoto
          ? _value.authorPhoto
          : authorPhoto // ignore: cast_nullable_to_non_nullable
              as String,
      null == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AuthorsModel implements _AuthorsModel {
  _$_AuthorsModel(
      @JsonKey(name: 'author_id') this.authorId,
      @JsonKey(name: 'bio') this.story,
      @JsonKey(name: 'picture') this.authorPhoto,
      this.source);

  factory _$_AuthorsModel.fromJson(Map<String, dynamic> json) =>
      _$$_AuthorsModelFromJson(json);

  @override
  @JsonKey(name: 'author_id')
  final int authorId;
  @override
  @JsonKey(name: 'bio')
  final String story;
  @override
  @JsonKey(name: 'picture')
  final String authorPhoto;
  @override
  final String source;

  @override
  String toString() {
    return 'AuthorsModel(authorId: $authorId, story: $story, authorPhoto: $authorPhoto, source: $source)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthorsModel &&
            (identical(other.authorId, authorId) ||
                other.authorId == authorId) &&
            (identical(other.story, story) || other.story == story) &&
            (identical(other.authorPhoto, authorPhoto) ||
                other.authorPhoto == authorPhoto) &&
            (identical(other.source, source) || other.source == source));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, authorId, story, authorPhoto, source);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthorsModelCopyWith<_$_AuthorsModel> get copyWith =>
      __$$_AuthorsModelCopyWithImpl<_$_AuthorsModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AuthorsModelToJson(
      this,
    );
  }
}

abstract class _AuthorsModel implements AuthorsModel {
  factory _AuthorsModel(
      @JsonKey(name: 'author_id') final int authorId,
      @JsonKey(name: 'bio') final String story,
      @JsonKey(name: 'picture') final String authorPhoto,
      final String source) = _$_AuthorsModel;

  factory _AuthorsModel.fromJson(Map<String, dynamic> json) =
      _$_AuthorsModel.fromJson;

  @override
  @JsonKey(name: 'author_id')
  int get authorId;
  @override
  @JsonKey(name: 'bio')
  String get story;
  @override
  @JsonKey(name: 'picture')
  String get authorPhoto;
  @override
  String get source;
  @override
  @JsonKey(ignore: true)
  _$$_AuthorsModelCopyWith<_$_AuthorsModel> get copyWith =>
      throw _privateConstructorUsedError;
}
