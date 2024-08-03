import 'package:chat_app/src/datas/enums/status_loading.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_state.freezed.dart';

@freezed
class RegisterState with _$RegisterState {
  const factory RegisterState({
    @Default(StatusLoading.initial) StatusLoading statusLoading,
    @Default('') String message,
  }) = _RegisterState;
}
