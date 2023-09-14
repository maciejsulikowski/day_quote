// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SearchState {
  List<QuotesModel> get quotesModel => throw _privateConstructorUsedError;
  List<AuthorsModel> get authorsModel => throw _privateConstructorUsedError;
  Status get status => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchStateCopyWith<SearchState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchStateCopyWith<$Res> {
  factory $SearchStateCopyWith(
          SearchState value, $Res Function(SearchState) then) =
      _$SearchStateCopyWithImpl<$Res, SearchState>;
  @useResult
  $Res call(
      {List<QuotesModel> quotesModel,
      List<AuthorsModel> authorsModel,
      Status status,
      String? errorMessage});
}

/// @nodoc
class _$SearchStateCopyWithImpl<$Res, $Val extends SearchState>
    implements $SearchStateCopyWith<$Res> {
  _$SearchStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? quotesModel = null,
    Object? authorsModel = null,
    Object? status = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      quotesModel: null == quotesModel
          ? _value.quotesModel
          : quotesModel // ignore: cast_nullable_to_non_nullable
              as List<QuotesModel>,
      authorsModel: null == authorsModel
          ? _value.authorsModel
          : authorsModel // ignore: cast_nullable_to_non_nullable
              as List<AuthorsModel>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SearchStateCopyWith<$Res>
    implements $SearchStateCopyWith<$Res> {
  factory _$$_SearchStateCopyWith(
          _$_SearchState value, $Res Function(_$_SearchState) then) =
      __$$_SearchStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<QuotesModel> quotesModel,
      List<AuthorsModel> authorsModel,
      Status status,
      String? errorMessage});
}

/// @nodoc
class __$$_SearchStateCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res, _$_SearchState>
    implements _$$_SearchStateCopyWith<$Res> {
  __$$_SearchStateCopyWithImpl(
      _$_SearchState _value, $Res Function(_$_SearchState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? quotesModel = null,
    Object? authorsModel = null,
    Object? status = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_$_SearchState(
      quotesModel: null == quotesModel
          ? _value._quotesModel
          : quotesModel // ignore: cast_nullable_to_non_nullable
              as List<QuotesModel>,
      authorsModel: null == authorsModel
          ? _value._authorsModel
          : authorsModel // ignore: cast_nullable_to_non_nullable
              as List<AuthorsModel>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_SearchState implements _SearchState {
  _$_SearchState(
      {final List<QuotesModel> quotesModel = const [],
      final List<AuthorsModel> authorsModel = const [],
      this.status = Status.initial,
      this.errorMessage})
      : _quotesModel = quotesModel,
        _authorsModel = authorsModel;

  final List<QuotesModel> _quotesModel;
  @override
  @JsonKey()
  List<QuotesModel> get quotesModel {
    if (_quotesModel is EqualUnmodifiableListView) return _quotesModel;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_quotesModel);
  }

  final List<AuthorsModel> _authorsModel;
  @override
  @JsonKey()
  List<AuthorsModel> get authorsModel {
    if (_authorsModel is EqualUnmodifiableListView) return _authorsModel;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_authorsModel);
  }

  @override
  @JsonKey()
  final Status status;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'SearchState(quotesModel: $quotesModel, authorsModel: $authorsModel, status: $status, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchState &&
            const DeepCollectionEquality()
                .equals(other._quotesModel, _quotesModel) &&
            const DeepCollectionEquality()
                .equals(other._authorsModel, _authorsModel) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_quotesModel),
      const DeepCollectionEquality().hash(_authorsModel),
      status,
      errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SearchStateCopyWith<_$_SearchState> get copyWith =>
      __$$_SearchStateCopyWithImpl<_$_SearchState>(this, _$identity);
}

abstract class _SearchState implements SearchState {
  factory _SearchState(
      {final List<QuotesModel> quotesModel,
      final List<AuthorsModel> authorsModel,
      final Status status,
      final String? errorMessage}) = _$_SearchState;

  @override
  List<QuotesModel> get quotesModel;
  @override
  List<AuthorsModel> get authorsModel;
  @override
  Status get status;
  @override
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$_SearchStateCopyWith<_$_SearchState> get copyWith =>
      throw _privateConstructorUsedError;
}
