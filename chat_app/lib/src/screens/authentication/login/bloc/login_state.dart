import 'package:chat_app/src/datas/enums/status_loading.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_state.freezed.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState({
    @Default(StatusLoading.initial) StatusLoading statusLoading,
    @Default('') String message,
  }) = _LoginState;
}
