// import 'package:equatable/equatable.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

// import 'reset_password_state.dart';

// part 'reset_password_event.dart';

// class VerifyPhoneBloc extends Bloc<VerifyPhoneEvent, VerifyPhoneState> {
//   VerifyPhoneBloc() : super(const VerifyPhoneState()) {
//     // on<HomeInitialEvent>(_onHomeInitialEvent);
//   }

//   // void _onHomeInitialEvent(HomeInitialEvent event, Emitter<HomeState> emit) async {
//   //   emit(state.copyWith(statusLoading: StatusLoading.loading));
//   //   await Future.delayed(const Duration(seconds: 2));
//   //   emit(state.copyWith(
//   //       statusLoading: StatusLoading.success, message: Random().nextInt(100).toString()));
//   //   await Future.delayed(const Duration(seconds: 5));
//   //   emit(state.copyWith(statusLoading: StatusLoading.error, message: 'Lỗi init'));
//   // }
// }

// extension VerifyPhoneBlocStateEx on BuildContext {
//   VerifyPhoneBloc get verifyPhoneBlocState => read<VerifyPhoneBloc>();
// }
