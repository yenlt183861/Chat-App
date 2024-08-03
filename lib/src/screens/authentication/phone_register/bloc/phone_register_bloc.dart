import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'phone_register_state.dart';

part 'phone_register_event.dart';

class PhoneRegisterBloc extends Bloc<PhoneRegisterEvent, PhoneRegisterState> {
  PhoneRegisterBloc() : super(const PhoneRegisterState()) {
    // on<HomeInitialEvent>(_onHomeInitialEvent);
  }

  // void _onHomeInitialEvent(HomeInitialEvent event, Emitter<HomeState> emit) async {
  //   emit(state.copyWith(statusLoading: StatusLoading.loading));
  //   await Future.delayed(const Duration(seconds: 2));
  //   emit(state.copyWith(
  //       statusLoading: StatusLoading.success, message: Random().nextInt(100).toString()));
  //   await Future.delayed(const Duration(seconds: 5));
  //   emit(state.copyWith(statusLoading: StatusLoading.error, message: 'Lỗi init'));
  // }
}

extension PhoneRegisterStateEx on BuildContext {
  PhoneRegisterState get phoneRegisterState => read<PhoneRegisterState>();
}
