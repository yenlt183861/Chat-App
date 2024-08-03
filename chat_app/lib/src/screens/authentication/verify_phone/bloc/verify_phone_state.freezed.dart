// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'verify_phone_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$VerifyPhoneState {
  StatusLoading get statusLoading => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $VerifyPhoneStateCopyWith<VerifyPhoneState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerifyPhoneStateCopyWith<$Res> {
  factory $VerifyPhoneStateCopyWith(
          VerifyPhoneState value, $Res Function(VerifyPhoneState) then) =
      _$VerifyPhoneStateCopyWithImpl<$Res, VerifyPhoneState>;
  @useResult
  $Res call({StatusLoading statusLoading, String message});
}

/// @nodoc
class _$VerifyPhoneStateCopyWithImpl<$Res, $Val extends VerifyPhoneState>
    implements $VerifyPhoneStateCopyWith<$Res> {
  _$VerifyPhoneStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? statusLoading = null,
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      statusLoading: null == statusLoading
          ? _value.statusLoading
          : statusLoading // ignore: cast_nullable_to_non_nullable
              as StatusLoading,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$VerifyPhoneStateImplCopyWith<$Res>
    implements $VerifyPhoneStateCopyWith<$Res> {
  factory _$$VerifyPhoneStateImplCopyWith(_$VerifyPhoneStateImpl value,
          $Res Function(_$VerifyPhoneStateImpl) then) =
      __$$VerifyPhoneStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({StatusLoading statusLoading, String message});
}

/// @nodoc
class __$$VerifyPhoneStateImplCopyWithImpl<$Res>
    extends _$VerifyPhoneStateCopyWithImpl<$Res, _$VerifyPhoneStateImpl>
    implements _$$VerifyPhoneStateImplCopyWith<$Res> {
  __$$VerifyPhoneStateImplCopyWithImpl(_$VerifyPhoneStateImpl _value,
      $Res Function(_$VerifyPhoneStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? statusLoading = null,
    Object? message = null,
  }) {
    return _then(_$VerifyPhoneStateImpl(
      statusLoading: null == statusLoading
          ? _value.statusLoading
          : statusLoading // ignore: cast_nullable_to_non_nullable
              as StatusLoading,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$VerifyPhoneStateImpl implements _VerifyPhoneState {
  const _$VerifyPhoneStateImpl(
      {this.statusLoading = StatusLoading.initial, this.message = ''});

  @override
  @JsonKey()
  final StatusLoading statusLoading;
  @override
  @JsonKey()
  final String message;

  @override
  String toString() {
    return 'VerifyPhoneState(statusLoading: $statusLoading, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerifyPhoneStateImpl &&
            (identical(other.statusLoading, statusLoading) ||
                other.statusLoading == statusLoading) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, statusLoading, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VerifyPhoneStateImplCopyWith<_$VerifyPhoneStateImpl> get copyWith =>
      __$$VerifyPhoneStateImplCopyWithImpl<_$VerifyPhoneStateImpl>(
          this, _$identity);
}

abstract class _VerifyPhoneState implements VerifyPhoneState {
  const factory _VerifyPhoneState(
      {final StatusLoading statusLoading,
      final String message}) = _$VerifyPhoneStateImpl;

  @override
  StatusLoading get statusLoading;
  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$VerifyPhoneStateImplCopyWith<_$VerifyPhoneStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
