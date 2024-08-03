import 'package:chat_app/src/datas/enums/status_loading.dart';
import 'package:chat_app/src/datas/enums/verification_method.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'forget_password_state.freezed.dart';

@freezed
class ForgetPasswordState with _$ForgetPasswordState {
  const factory ForgetPasswordState({
    @Default(StatusLoading.initial) StatusLoading statusLoading,
    @Default('') String message,
    VerificationMethod? verificationMethod,
    @Default('') String? code,
    @Default('') String? contact,
  }) = _ForgetPasswordState;
}
