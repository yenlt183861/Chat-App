// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'forget_password_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ForgetPasswordState {
  StatusLoading get statusLoading => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  VerificationMethod? get verificationMethod =>
      throw _privateConstructorUsedError;
  String? get code => throw _privateConstructorUsedError;
  String? get contact => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ForgetPasswordStateCopyWith<ForgetPasswordState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForgetPasswordStateCopyWith<$Res> {
  factory $ForgetPasswordStateCopyWith(
          ForgetPasswordState value, $Res Function(ForgetPasswordState) then) =
      _$ForgetPasswordStateCopyWithImpl<$Res, ForgetPasswordState>;
  @useResult
  $Res call(
      {StatusLoading statusLoading,
      String message,
      VerificationMethod? verificationMethod,
      String? code,
      String? contact});
}

/// @nodoc
class _$ForgetPasswordStateCopyWithImpl<$Res, $Val extends ForgetPasswordState>
    implements $ForgetPasswordStateCopyWith<$Res> {
  _$ForgetPasswordStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? statusLoading = null,
    Object? message = null,
    Object? verificationMethod = freezed,
    Object? code = freezed,
    Object? contact = freezed,
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
      verificationMethod: freezed == verificationMethod
          ? _value.verificationMethod
          : verificationMethod // ignore: cast_nullable_to_non_nullable
              as VerificationMethod?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      contact: freezed == contact
          ? _value.contact
          : contact // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ForgetPasswordStateImplCopyWith<$Res>
    implements $ForgetPasswordStateCopyWith<$Res> {
  factory _$$ForgetPasswordStateImplCopyWith(_$ForgetPasswordStateImpl value,
          $Res Function(_$ForgetPasswordStateImpl) then) =
      __$$ForgetPasswordStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {StatusLoading statusLoading,
      String message,
      VerificationMethod? verificationMethod,
      String? code,
      String? contact});
}

/// @nodoc
class __$$ForgetPasswordStateImplCopyWithImpl<$Res>
    extends _$ForgetPasswordStateCopyWithImpl<$Res, _$ForgetPasswordStateImpl>
    implements _$$ForgetPasswordStateImplCopyWith<$Res> {
  __$$ForgetPasswordStateImplCopyWithImpl(_$ForgetPasswordStateImpl _value,
      $Res Function(_$ForgetPasswordStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? statusLoading = null,
    Object? message = null,
    Object? verificationMethod = freezed,
    Object? code = freezed,
    Object? contact = freezed,
  }) {
    return _then(_$ForgetPasswordStateImpl(
      statusLoading: null == statusLoading
          ? _value.statusLoading
          : statusLoading // ignore: cast_nullable_to_non_nullable
              as StatusLoading,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      verificationMethod: freezed == verificationMethod
          ? _value.verificationMethod
          : verificationMethod // ignore: cast_nullable_to_non_nullable
              as VerificationMethod?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      contact: freezed == contact
          ? _value.contact
          : contact // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ForgetPasswordStateImpl implements _ForgetPasswordState {
  const _$ForgetPasswordStateImpl(
      {this.statusLoading = StatusLoading.initial,
      this.message = '',
      this.verificationMethod,
      this.code = '',
      this.contact = ''});

  @override
  @JsonKey()
  final StatusLoading statusLoading;
  @override
  @JsonKey()
  final String message;
  @override
  final VerificationMethod? verificationMethod;
  @override
  @JsonKey()
  final String? code;
  @override
  @JsonKey()
  final String? contact;

  @override
  String toString() {
    return 'ForgetPasswordState(statusLoading: $statusLoading, message: $message, verificationMethod: $verificationMethod, code: $code, contact: $contact)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ForgetPasswordStateImpl &&
            (identical(other.statusLoading, statusLoading) ||
                other.statusLoading == statusLoading) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.verificationMethod, verificationMethod) ||
                other.verificationMethod == verificationMethod) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.contact, contact) || other.contact == contact));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, statusLoading, message, verificationMethod, code, contact);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ForgetPasswordStateImplCopyWith<_$ForgetPasswordStateImpl> get copyWith =>
      __$$ForgetPasswordStateImplCopyWithImpl<_$ForgetPasswordStateImpl>(
          this, _$identity);
}

abstract class _ForgetPasswordState implements ForgetPasswordState {
  const factory _ForgetPasswordState(
      {final StatusLoading statusLoading,
      final String message,
      final VerificationMethod? verificationMethod,
      final String? code,
      final String? contact}) = _$ForgetPasswordStateImpl;

  @override
  StatusLoading get statusLoading;
  @override
  String get message;
  @override
  VerificationMethod? get verificationMethod;
  @override
  String? get code;
  @override
  String? get contact;
  @override
  @JsonKey(ignore: true)
  _$$ForgetPasswordStateImplCopyWith<_$ForgetPasswordStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
