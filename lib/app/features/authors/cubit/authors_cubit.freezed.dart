// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'authors_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthorsState {
  List<AuthorsModel> get authorsModel => throw _privateConstructorUsedError;
  Status get status => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthorsStateCopyWith<AuthorsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthorsStateCopyWith<$Res> {
  factory $AuthorsStateCopyWith(
          AuthorsState value, $Res Function(AuthorsState) then) =
      _$AuthorsStateCopyWithImpl<$Res, AuthorsState>;
  @useResult
  $Res call(
      {List<AuthorsModel> authorsModel, Status status, String? errorMessage});
}

/// @nodoc
class _$AuthorsStateCopyWithImpl<$Res, $Val extends AuthorsState>
    implements $AuthorsStateCopyWith<$Res> {
  _$AuthorsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? authorsModel = null,
    Object? status = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
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
abstract class _$$_AuthorsStateCopyWith<$Res>
    implements $AuthorsStateCopyWith<$Res> {
  factory _$$_AuthorsStateCopyWith(
          _$_AuthorsState value, $Res Function(_$_AuthorsState) then) =
      __$$_AuthorsStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<AuthorsModel> authorsModel, Status status, String? errorMessage});
}

/// @nodoc
class __$$_AuthorsStateCopyWithImpl<$Res>
    extends _$AuthorsStateCopyWithImpl<$Res, _$_AuthorsState>
    implements _$$_AuthorsStateCopyWith<$Res> {
  __$$_AuthorsStateCopyWithImpl(
      _$_AuthorsState _value, $Res Function(_$_AuthorsState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? authorsModel = null,
    Object? status = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_$_AuthorsState(
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

class _$_AuthorsState implements _AuthorsState {
  _$_AuthorsState(
      {final List<AuthorsModel> authorsModel = const [],
      this.status = Status.initial,
      this.errorMessage})
      : _authorsModel = authorsModel;

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
    return 'AuthorsState(authorsModel: $authorsModel, status: $status, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthorsState &&
            const DeepCollectionEquality()
                .equals(other._authorsModel, _authorsModel) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_authorsModel), status, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthorsStateCopyWith<_$_AuthorsState> get copyWith =>
      __$$_AuthorsStateCopyWithImpl<_$_AuthorsState>(this, _$identity);
}

abstract class _AuthorsState implements AuthorsState {
  factory _AuthorsState(
      {final List<AuthorsModel> authorsModel,
      final Status status,
      final String? errorMessage}) = _$_AuthorsState;

  @override
  List<AuthorsModel> get authorsModel;
  @override
  Status get status;
  @override
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$_AuthorsStateCopyWith<_$_AuthorsState> get copyWith =>
      throw _privateConstructorUsedError;
}
