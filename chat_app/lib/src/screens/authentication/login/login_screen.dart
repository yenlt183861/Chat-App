import 'package:chat_app/src/configs/resources/app_color.dart';
import 'package:chat_app/src/configs/resources/app_font.dart';
import 'package:chat_app/src/custom_widgets/loading_showable.dart';
import 'package:chat_app/src/custom_widgets/popup_notification.dart';
import 'package:chat_app/src/custom_widgets/tap_area.dart';
import 'package:chat_app/src/custom_widgets/toast_showable/toast_message_type.dart';
import 'package:chat_app/src/custom_widgets/toast_showable/toast_showable.dart';
import 'package:chat_app/src/datas/enums/status_loading.dart';
import 'package:chat_app/src/screens/app_router.dart';
import 'package:chat_app/src/screens/authentication/login/components/barrel_components.dart';
import 'package:chat_app/src/screens/authentication/register/components/barrel_components.dart';
import 'package:chat_app/src/utils/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/login_bloc.dart';
import 'bloc/login_state.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginBloc(),
      child: const _Body(),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body();

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return BlocListener<LoginBloc, LoginState>(
      listenWhen: (p, c) => p.statusLoading != c.statusLoading,
      listener: (context, state) {
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
                const GapH(40),
                Text(
                  'Login Your\nAccount',
                  style: AppFont.semiBold(
                    fontSize: 32,
                    color: AppColor.tuftsBlue,
                  ),
                ),
                const GapH(40),
                const LoginForm(),
                const GapH(16),
                Align(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'Create new account? ',
                        style: AppFont.regular(color: AppColor.philippineSilver),
                      ),
                      TapArea(
                        onTap: () {
                          Navigator.of(context).pushNamed(AppRouter.REGISTER_SCREEN);
                        },
                        child: Text(
                          'Sign up',
                          style: AppFont.semiBold(color: AppColor.tuftsBlue),
                        ),
                      ),
                    ],
                  ),
                ),
                const GapH(20),
                const Divider(
                  color: AppColor.lavenderGray,
                  thickness: 0.5,
                  endIndent: 20,
                  indent: 20,
                ),
                const GapH(20),
                Align(
                  child: Text(
                    'Or continue with accounts',
                    style: AppFont.regular(color: AppColor.philippineSilver),
                  ),
                ),
                const GapH(20),
                const RegisterSocial(),
                const GapH(20),
                Align(
                  child: Column(
                    children: [
                      Text(
                        'By continuing, you agree to our',
                        style: AppFont.regular(color: AppColor.philippineSilver),
                        textAlign: TextAlign.center,
                      ),
                      TapArea(
                        onTap: () {},
                        child: Text(
                          'Terms and services.',
                          style: AppFont.semiBold(color: AppColor.tuftsBlue),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
