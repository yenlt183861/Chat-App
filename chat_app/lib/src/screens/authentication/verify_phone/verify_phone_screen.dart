import 'package:chat_app/src/configs/resources/app_color.dart';
import 'package:chat_app/src/configs/resources/app_font.dart';
import 'package:chat_app/src/custom_widgets/loading_showable.dart';
import 'package:chat_app/src/custom_widgets/primary_button.dart';
import 'package:chat_app/src/custom_widgets/tap_area.dart';
import 'package:chat_app/src/datas/enums/status_loading.dart';
import 'package:chat_app/src/utils/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/verify_phone_bloc.dart';
import 'bloc/verify_phone_state.dart';
import 'components/barrel_components.dart';

class VerifyPhoneScreen extends StatelessWidget {
  const VerifyPhoneScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => VerifyPhoneBloc(),
      child: const _Body(),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body();

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return BlocListener<VerifyPhoneBloc, VerifyPhoneState>(
      listenWhen: (p, c) => p.statusLoading != c.statusLoading,
      listener: (context, state) {
        if (state.statusLoading.isLoading) {
          LoadingShowAble.showLoading();
        } else if (state.statusLoading.isError) {
          LoadingShowAble.forceHide();
        } else {
          LoadingShowAble.forceHide();
        }
      },
      child: Scaffold(
        backgroundColor: const Color(0xFFF7F8FA),
        body: SafeArea(
          child: SingleChildScrollView(
            physics: const AlwaysScrollableScrollPhysics(),
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                PrimaryButton(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: AppColor.white.withOpacity(0.67),
                      boxShadow: [
                        BoxShadow(
                            offset: const Offset(6, 12),
                            blurRadius: 24,
                            color: const Color(0xFFD3D1D8).withOpacity(0.3)),
                      ],
                    ),
                    child: const Icon(Icons.arrow_back_ios_new_rounded),
                  ),
                ),
                const GapH(40),
                Text(
                  'Enter Your Phone Number',
                  style: AppFont.semiBold(
                    fontSize: 32,
                    color: const Color(0xFF323142),
                  ),
                ),
                const GapH(30),
                const VerifyPhoneForm(),
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
                          'Terms and Services',
                          style: AppFont.semiBold(color: AppColor.crayola),
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
