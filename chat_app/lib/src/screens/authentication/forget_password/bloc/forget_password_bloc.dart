import 'package:chat_app/src/datas/enums/status_loading.dart';
import 'package:chat_app/src/datas/enums/verification_method.dart';
import 'package:chat_app/src/services/repository/barrel_repository.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'forget_password_state.dart';

part 'forget_password_event.dart';

class ForgetPasswordBloc extends Bloc<ForgetPasswordEvent, ForgetPasswordState> {
  ForgetPasswordBloc() : super(const ForgetPasswordState()) {
    on<SelectContactEvent>(_onSelectContactEvent);
    on<ChangeContactInfoEvent>(_onChangeContactInfoEvent);
    on<SendCodeEvent>(_onSendCodeEvent);
    on<VerifyCodeEvent>(_onVerifyCodeEvent);
    // on<SetVerificationCodedEvent>(_onSetVerificationCodeForgetPasswordEvent);
  }

  final authRepo = AuthRepository();

  void _onSelectContactEvent(SelectContactEvent event, Emitter<ForgetPasswordState> emit) async {
    emit(state.copyWith(verificationMethod: event.method));
  }

  void _onChangeContactInfoEvent(
      ChangeContactInfoEvent event, Emitter<ForgetPasswordState> emit) async {
    emit(state.copyWith(contact: event.contact));
  }

  void _onSendCodeEvent(SendCodeEvent event, Emitter<ForgetPasswordState> emit) async {
    if (state.verificationMethod == null || state.contact == null || state.contact!.isEmpty) return;
    try {
      emit(state.copyWith(statusLoading: StatusLoading.loading));
      await authRepo.sendVerificationCode(
          method: state.verificationMethod!, contact: state.contact!);
      emit(state.copyWith(statusLoading: StatusLoading.success));
    } catch (e) {
      emit(state.copyWith(
        statusLoading: StatusLoading.error,
        message: e.toString(),
      ));
    }
  }

  // void _onSetVerificationCodeForgetPasswordEvent(
  //     SetVerificationCodeForgetPasswordEvent event, Emitter<ForgetPasswordState> emit) async {
  //   emit(state.copyWith(code: event.code));
  //   if (event.code.trim().length == 4) {
  //     add(VerifyCodeForgetPasswordEvent());
  //   }
  // }

  void _onVerifyCodeEvent(VerifyCodeEvent event, Emitter<ForgetPasswordState> emit) async {
    if (state.verificationMethod == null ||
        state.contact == null ||
        state.contact!.isEmpty ||
        state.code?.trim().length != 4) return;

    try {
      emit(state.copyWith(statusLoading: StatusLoading.loading));
      await authRepo.verifyCode(
        method: state.verificationMethod!,
        code: state.code!,
        contact: state.contact!,
      );
      emit(state.copyWith(statusLoading: StatusLoading.success));
    } catch (e) {
      emit(state.copyWith(
        statusLoading: StatusLoading.error,
        message: e.toString(),
      ));
    }
  }
}

extension ForgetPasswordBlocEx on BuildContext {
  ForgetPasswordBloc get forgetPasswordBloc => read<ForgetPasswordBloc>();
}
