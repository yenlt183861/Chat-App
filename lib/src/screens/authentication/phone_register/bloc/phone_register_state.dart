import 'package:chat_app/src/datas/enums/status_loading.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'phone_register_state.freezed.dart';

@freezed
class PhoneRegisterState with _$PhoneRegisterState {
  const factory PhoneRegisterState({
    @Default(StatusLoading.initial) StatusLoading statusLoading,
    @Default('') String message,
  }) = _PhoneRegisterState;
}
