// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'quotes_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

QuotesModel _$QuotesModelFromJson(Map<String, dynamic> json) {
  return _QuotesModel.fromJson(json);
}

/// @nodoc
mixin _$QuotesModel {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'author_id')
  int get authorId => throw _privateConstructorUsedError;
  @JsonKey(name: 'content')
  String get quote => throw _privateConstructorUsedError;
  @JsonKey(name: 'author_name')
  String get authorName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuotesModelCopyWith<QuotesModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuotesModelCopyWith<$Res> {
  factory $QuotesModelCopyWith(
          QuotesModel value, $Res Function(QuotesModel) then) =
      _$QuotesModelCopyWithImpl<$Res, QuotesModel>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'author_id') int authorId,
      @JsonKey(name: 'content') String quote,
      @JsonKey(name: 'author_name') String authorName});
}

/// @nodoc
class _$QuotesModelCopyWithImpl<$Res, $Val extends QuotesModel>
    implements $QuotesModelCopyWith<$Res> {
  _$QuotesModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? authorId = null,
    Object? quote = null,
    Object? authorName = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      authorId: null == authorId
          ? _value.authorId
          : authorId // ignore: cast_nullable_to_non_nullable
              as int,
      quote: null == quote
          ? _value.quote
          : quote // ignore: cast_nullable_to_non_nullable
              as String,
      authorName: null == authorName
          ? _value.authorName
          : authorName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_QuotesModelCopyWith<$Res>
    implements $QuotesModelCopyWith<$Res> {
  factory _$$_QuotesModelCopyWith(
          _$_QuotesModel value, $Res Function(_$_QuotesModel) then) =
      __$$_QuotesModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'author_id') int authorId,
      @JsonKey(name: 'content') String quote,
      @JsonKey(name: 'author_name') String authorName});
}

/// @nodoc
class __$$_QuotesModelCopyWithImpl<$Res>
    extends _$QuotesModelCopyWithImpl<$Res, _$_QuotesModel>
    implements _$$_QuotesModelCopyWith<$Res> {
  __$$_QuotesModelCopyWithImpl(
      _$_QuotesModel _value, $Res Function(_$_QuotesModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? authorId = null,
    Object? quote = null,
    Object? authorName = null,
  }) {
    return _then(_$_QuotesModel(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      null == authorId
          ? _value.authorId
          : authorId // ignore: cast_nullable_to_non_nullable
              as int,
      null == quote
          ? _value.quote
          : quote // ignore: cast_nullable_to_non_nullable
              as String,
      null == authorName
          ? _value.authorName
          : authorName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_QuotesModel implements _QuotesModel {
  _$_QuotesModel(
      this.id,
      @JsonKey(name: 'author_id') this.authorId,
      @JsonKey(name: 'content') this.quote,
      @JsonKey(name: 'author_name') this.authorName);

  factory _$_QuotesModel.fromJson(Map<String, dynamic> json) =>
      _$$_QuotesModelFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'author_id')
  final int authorId;
  @override
  @JsonKey(name: 'content')
  final String quote;
  @override
  @JsonKey(name: 'author_name')
  final String authorName;

  @override
  String toString() {
    return 'QuotesModel(id: $id, authorId: $authorId, quote: $quote, authorName: $authorName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_QuotesModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.authorId, authorId) ||
                other.authorId == authorId) &&
            (identical(other.quote, quote) || other.quote == quote) &&
            (identical(other.authorName, authorName) ||
                other.authorName == authorName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, authorId, quote, authorName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_QuotesModelCopyWith<_$_QuotesModel> get copyWith =>
      __$$_QuotesModelCopyWithImpl<_$_QuotesModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_QuotesModelToJson(
      this,
    );
  }
}

abstract class _QuotesModel implements QuotesModel {
  factory _QuotesModel(
      final int id,
      @JsonKey(name: 'author_id') final int authorId,
      @JsonKey(name: 'content') final String quote,
      @JsonKey(name: 'author_name') final String authorName) = _$_QuotesModel;

  factory _QuotesModel.fromJson(Map<String, dynamic> json) =
      _$_QuotesModel.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'author_id')
  int get authorId;
  @override
  @JsonKey(name: 'content')
  String get quote;
  @override
  @JsonKey(name: 'author_name')
  String get authorName;
  @override
  @JsonKey(ignore: true)
  _$$_QuotesModelCopyWith<_$_QuotesModel> get copyWith =>
      throw _privateConstructorUsedError;
}
