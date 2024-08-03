import 'package:chat_app/src/configs/resources/barrel_resources.dart';
import 'package:chat_app/src/custom_widgets/button_back.dart';
import 'package:chat_app/src/custom_widgets/primary_button.dart';
import 'package:chat_app/src/datas/enums/verification_method.dart';
import 'package:chat_app/src/screens/authentication/forget_password/bloc/forget_password_bloc.dart';
import 'package:chat_app/src/screens/authentication/forget_password/bloc/forget_password_state.dart';
import 'package:chat_app/src/screens/authentication/forget_password/components/barrel_components.dart';
import 'package:chat_app/src/utils/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

Future<dynamic> verifyCodeBottomSheet({
  required BuildContext context,
  required VerificationMethod verificationMethod,
  required String info,
}) {
  return showModalBottomSheet(
    context: context,
    enableDrag: false,
    isScrollControlled: true,
    backgroundColor: AppColor.platinum,
    builder: (mContext) {
      return BlocProvider.value(
        value: context.forgetPasswordBloc,
        child: _BodyVerifyCode(
          info: info,
          verificationMethod: verificationMethod,
        ),
      );
    },
  );
}

class _BodyVerifyCode extends StatelessWidget {
  const _BodyVerifyCode({
    required this.info,
    required this.verificationMethod,
  });
  final String info;
  final VerificationMethod verificationMethod;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 20,
        right: 20,
        top: SizeConfig.paddingTop,
        bottom: SizeConfig.paddingBottom,
      ),
      child: Column(
        children: [
          const Align(
            alignment: Alignment.centerLeft,
            child: ButtonBack(),
          ),
          Expanded(
            child: Center(
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 16),
                width: double.maxFinite,
                decoration: BoxDecoration(
                  color: AppColor.ghostWhite,
                  borderRadius: BorderRadius.circular(24),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Verification',
                      style: AppFont.semiBold(color: AppColor.crayola, fontSize: 22),
                    ),
                    const GapH(8),
                    Text(
                      'Enter the code sent to the ${verificationMethod.name}',
                      style: AppFont.regular(color: AppColor.philippineSilver),
                    ),
                    Text(
                      'The code will expire in 03:00',
                      style: AppFont.regular(color: AppColor.philippineSilver),
                    ),
                    const GapH(20),
                    Text(
                      info,
                      style: AppFont.medium(color: AppColor.crayola),
                    ),
                    const GapH(20),
                    const PinCode(),
                    const GapH(20),
                    Text(
                      'Didn\'t receive code?',
                      style: AppFont.regular(color: AppColor.philippineSilver, fontSize: 14),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Text(
                        'Resend',
                        style: AppFont.regular(
                          color: AppColor.tuftsBlue,
                          fontSize: 14,
                          textDecoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                    const GapH(20),
                    BlocBuilder<ForgetPasswordBloc, ForgetPasswordState>(
                        buildWhen: (p, c) => p.code != c.code,
                        builder: (context, state) {
                          final disable = (state.code ?? '').trim().length != 4;
                          return PrimaryButton(
                            disable: disable,
                            onTap: () {
                              if (disable) return;
                              context.forgetPasswordBloc.add(VerifyCodeEvent());
                            },
                            width: double.maxFinite,
                            title: 'Verify',
                            padding: const EdgeInsets.symmetric(vertical: 16),
                            backgroundColor: disable ? AppColor.platinum : null,
                            textStyle:
                                disable ? AppFont.semiBold(color: AppColor.philippineSilver) : null,
                          );
                        }),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
