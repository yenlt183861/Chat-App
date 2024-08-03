import 'package:chat_app/src/configs/resources/app_color.dart';
import 'package:chat_app/src/configs/resources/app_font.dart';
import 'package:chat_app/src/custom_widgets/button_back.dart';
import 'package:chat_app/src/custom_widgets/loading_showable.dart';
import 'package:chat_app/src/custom_widgets/popup_notification.dart';
import 'package:chat_app/src/custom_widgets/primary_button.dart';
import 'package:chat_app/src/datas/enums/status_loading.dart';
import 'package:chat_app/src/screens/authentication/forget_password/components/barrel_components.dart';
import 'package:chat_app/src/utils/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/forget_password_bloc.dart';
import 'bloc/forget_password_state.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ForgetPasswordBloc(),
      child: const _Body(),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body();

  @override
  Widget build(BuildContext context) {
    return BlocListener<ForgetPasswordBloc, ForgetPasswordState>(
      listenWhen: (p, c) => p.statusLoading != c.statusLoading,
      listener: (context, state) {
        print('1221121231 go listener');
        if (state.statusLoading.isLoading) {
          LoadingShowAble.showLoading();
        } else if (state.statusLoading.isError) {
          LoadingShowAble.forceHide();
          // ToastShowable.show(toastType: ToastMessageType.error, message: state.message);
          PopupNotification.showMessage(title: 'Thông báo', message: state.message);
        } else {
          LoadingShowAble.forceHide();
        }
      },
      child: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            physics: const AlwaysScrollableScrollPhysics(),
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                const ButtonBack(),
                const GapH(40),
                Text(
                  'Forget Password',
                  style: AppFont.semiBold(fontSize: 32, color: AppColor.tuftsBlue),
                ),
                Container(
                  constraints: BoxConstraints(maxWidth: SizeConfig.screenWidth * 0.7),
                  child: Text(
                    'Select which contact details should we use to reset your password',
                    style: AppFont.regular(color: AppColor.philippineSilver),
                  ),
                ),
                const GapH(40),
                const ChooseVerificationMethod(),
                const GapH(30),
                BlocBuilder<ForgetPasswordBloc, ForgetPasswordState>(
                    buildWhen: (p, c) => p.verificationMethod != c.verificationMethod,
                    builder: (context, state) {
                      final disable = state.verificationMethod == null;
                      return PrimaryButton(
                        disable: disable,
                        onTap: () async {
                          if (disable) return;
                          if (state.verificationMethod == null) return;
                          await showContactDialog(
                            context: context,
                            verificationMethod: state.verificationMethod!,
                          );
                        },
                        backgroundColor: disable ? AppColor.platinum : null,
                        width: double.maxFinite,
                        title: 'Next',
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        textStyle:
                            disable ? AppFont.semiBold(color: AppColor.philippineSilver) : null,
                      );
                    }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
