// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'phone_register_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PhoneRegisterState {
  StatusLoading get statusLoading => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PhoneRegisterStateCopyWith<PhoneRegisterState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhoneRegisterStateCopyWith<$Res> {
  factory $PhoneRegisterStateCopyWith(
          PhoneRegisterState value, $Res Function(PhoneRegisterState) then) =
      _$PhoneRegisterStateCopyWithImpl<$Res, PhoneRegisterState>;
  @useResult
  $Res call({StatusLoading statusLoading, String message});
}

/// @nodoc
class _$PhoneRegisterStateCopyWithImpl<$Res, $Val extends PhoneRegisterState>
    implements $PhoneRegisterStateCopyWith<$Res> {
  _$PhoneRegisterStateCopyWithImpl(this._value, this._then);

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
abstract class _$$PhoneRegisterStateImplCopyWith<$Res>
    implements $PhoneRegisterStateCopyWith<$Res> {
  factory _$$PhoneRegisterStateImplCopyWith(_$PhoneRegisterStateImpl value,
          $Res Function(_$PhoneRegisterStateImpl) then) =
      __$$PhoneRegisterStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({StatusLoading statusLoading, String message});
}

/// @nodoc
class __$$PhoneRegisterStateImplCopyWithImpl<$Res>
    extends _$PhoneRegisterStateCopyWithImpl<$Res, _$PhoneRegisterStateImpl>
    implements _$$PhoneRegisterStateImplCopyWith<$Res> {
  __$$PhoneRegisterStateImplCopyWithImpl(_$PhoneRegisterStateImpl _value,
      $Res Function(_$PhoneRegisterStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? statusLoading = null,
    Object? message = null,
  }) {
    return _then(_$PhoneRegisterStateImpl(
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

class _$PhoneRegisterStateImpl implements _PhoneRegisterState {
  const _$PhoneRegisterStateImpl(
      {this.statusLoading = StatusLoading.initial, this.message = ''});

  @override
  @JsonKey()
  final StatusLoading statusLoading;
  @override
  @JsonKey()
  final String message;

  @override
  String toString() {
    return 'PhoneRegisterState(statusLoading: $statusLoading, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PhoneRegisterStateImpl &&
            (identical(other.statusLoading, statusLoading) ||
                other.statusLoading == statusLoading) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, statusLoading, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PhoneRegisterStateImplCopyWith<_$PhoneRegisterStateImpl> get copyWith =>
      __$$PhoneRegisterStateImplCopyWithImpl<_$PhoneRegisterStateImpl>(
          this, _$identity);
}

abstract class _PhoneRegisterState implements PhoneRegisterState {
  const factory _PhoneRegisterState(
      {final StatusLoading statusLoading,
      final String message}) = _$PhoneRegisterStateImpl;

  @override
  StatusLoading get statusLoading;
  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$PhoneRegisterStateImplCopyWith<_$PhoneRegisterStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
