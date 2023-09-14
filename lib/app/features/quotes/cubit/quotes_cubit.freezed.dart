// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'quotes_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$QuotesState {
  List<QuotesModel> get quotesModel => throw _privateConstructorUsedError;
  Status get status => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $QuotesStateCopyWith<QuotesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuotesStateCopyWith<$Res> {
  factory $QuotesStateCopyWith(
          QuotesState value, $Res Function(QuotesState) then) =
      _$QuotesStateCopyWithImpl<$Res, QuotesState>;
  @useResult
  $Res call(
      {List<QuotesModel> quotesModel, Status status, String? errorMessage});
}

/// @nodoc
class _$QuotesStateCopyWithImpl<$Res, $Val extends QuotesState>
    implements $QuotesStateCopyWith<$Res> {
  _$QuotesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? quotesModel = null,
    Object? status = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      quotesModel: null == quotesModel
          ? _value.quotesModel
          : quotesModel // ignore: cast_nullable_to_non_nullable
              as List<QuotesModel>,
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
abstract class _$$_QuotesStateCopyWith<$Res>
    implements $QuotesStateCopyWith<$Res> {
  factory _$$_QuotesStateCopyWith(
          _$_QuotesState value, $Res Function(_$_QuotesState) then) =
      __$$_QuotesStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<QuotesModel> quotesModel, Status status, String? errorMessage});
}

/// @nodoc
class __$$_QuotesStateCopyWithImpl<$Res>
    extends _$QuotesStateCopyWithImpl<$Res, _$_QuotesState>
    implements _$$_QuotesStateCopyWith<$Res> {
  __$$_QuotesStateCopyWithImpl(
      _$_QuotesState _value, $Res Function(_$_QuotesState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? quotesModel = null,
    Object? status = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_$_QuotesState(
      quotesModel: null == quotesModel
          ? _value._quotesModel
          : quotesModel // ignore: cast_nullable_to_non_nullable
              as List<QuotesModel>,
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

class _$_QuotesState implements _QuotesState {
  _$_QuotesState(
      {final List<QuotesModel> quotesModel = const [],
      this.status = Status.initial,
      this.errorMessage})
      : _quotesModel = quotesModel;

  final List<QuotesModel> _quotesModel;
  @override
  @JsonKey()
  List<QuotesModel> get quotesModel {
    if (_quotesModel is EqualUnmodifiableListView) return _quotesModel;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_quotesModel);
  }

  @override
  @JsonKey()
  final Status status;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'QuotesState(quotesModel: $quotesModel, status: $status, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_QuotesState &&
            const DeepCollectionEquality()
                .equals(other._quotesModel, _quotesModel) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_quotesModel), status, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_QuotesStateCopyWith<_$_QuotesState> get copyWith =>
      __$$_QuotesStateCopyWithImpl<_$_QuotesState>(this, _$identity);
}

abstract class _QuotesState implements QuotesState {
  factory _QuotesState(
      {final List<QuotesModel> quotesModel,
      final Status status,
      final String? errorMessage}) = _$_QuotesState;

  @override
  List<QuotesModel> get quotesModel;
  @override
  Status get status;
  @override
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$_QuotesStateCopyWith<_$_QuotesState> get copyWith =>
      throw _privateConstructorUsedError;
}
