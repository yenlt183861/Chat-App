import 'package:chat_app/src/datas/enums/status_loading.dart';
import 'package:chat_app/src/services/repository/barrel_repository.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'login_state.dart';

part 'login_event.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(const LoginState()) {
    on<SubmitLoginForm>(_onSubmitLoginForm);
  }

  final authRepo = AuthRepository();

  void _onSubmitLoginForm(SubmitLoginForm event, Emitter<LoginState> emit) async {
    try {
      emit(state.copyWith(statusLoading: StatusLoading.loading));
      await authRepo.login(email: event.email, password: event.password);
      emit(state.copyWith(statusLoading: StatusLoading.success));
    } catch (ex) {
      emit(state.copyWith(statusLoading: StatusLoading.error, message: ex.toString()));
    }
  }
}

extension LoginBlocEx on BuildContext {
  LoginBloc get loginBloc => read<LoginBloc>();
}
