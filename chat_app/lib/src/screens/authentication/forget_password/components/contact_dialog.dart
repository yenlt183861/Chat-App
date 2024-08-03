import 'package:chat_app/src/configs/resources/barrel_resources.dart';
import 'package:chat_app/src/custom_widgets/custom_text_field/barrel_text_field.dart';
import 'package:chat_app/src/custom_widgets/primary_button.dart';
import 'package:chat_app/src/datas/enums/verification_method.dart';
import 'package:chat_app/src/screens/authentication/forget_password/bloc/forget_password_bloc.dart';
import 'package:chat_app/src/screens/authentication/forget_password/bloc/forget_password_state.dart';
import 'package:chat_app/src/utils/size_config.dart';
import 'package:chat_app/src/utils/validators.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

Future<dynamic> showContactDialog({
  required BuildContext context,
  required VerificationMethod verificationMethod,
}) {
  return showDialog(
    context: context,
    barrierDismissible: true,
    useSafeArea: true,
    builder: (mContext) {
      return BlocProvider.value(
        value: context.forgetPasswordBloc,
        child: _Body(
          verificationMethod: verificationMethod,
        ),
      );
    },
  );
}

class _Body extends StatefulWidget {
  const _Body({
    required this.verificationMethod,
  });
  final VerificationMethod verificationMethod;

  @override
  State<_Body> createState() => _BodyState();
}

class _BodyState extends State<_Body> {
  late TextEditingController controller;

  @override
  void initState() {
    super.initState();
    controller = TextEditingController();
    controller.addListener(_listen);
  }

  void _listen() {
    final value = controller.text.trim();
    if (value.isEmpty ||
        (widget.verificationMethod == VerificationMethod.phone &&
            !Validators.isValidPhone(value)) ||
        (widget.verificationMethod == VerificationMethod.email &&
            !Validators.isValidEmail(value))) {
      context.forgetPasswordBloc.add(ChangeContactInfoEvent(null));
    } else {
      context.forgetPasswordBloc.add(ChangeContactInfoEvent(value));
    }
  }

  @override
  void dispose() {
    controller.removeListener(_listen);
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: AppColor.ghostWhite,
      content: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerRight,
              child: CloseButton(
                color: AppColor.crayola,
                onPressed: () {
                  Navigator.of(context).pop();
                  context.forgetPasswordBloc.add(ChangeContactInfoEvent(null));
                },
              ),
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Enter your ${widget.verificationMethod.name}',
                  style: AppFont.semiBold(color: AppColor.crayola, fontSize: 22),
                  textAlign: TextAlign.start,
                ),
                const GapH(20),
                widget.verificationMethod == VerificationMethod.email
                    ? EmailInput(
                        controller: controller,
                      )
                    : PhoneInput(
                        controller: controller,
                      ),
                const GapH(20),
                BlocBuilder<ForgetPasswordBloc, ForgetPasswordState>(
                    buildWhen: (p, c) => p.contact != c.contact,
                    builder: (context, state) {
                      final disable = (state.contact ?? '').isEmpty;
                      return PrimaryButton(
                        disable: disable,
                        onTap: () async {
                          if (disable ||
                              state.verificationMethod == null ||
                              state.contact == null ||
                              state.contact!.trim().isEmpty) {
                            return;
                          }
                          context.forgetPasswordBloc.add(SendCodeEvent());
                          // await verifyCodeBottomSheet(
                          //     context: context,
                          //     info: '0981896440',
                          //     verificationMethod: state.verificationMethod!);
                        },
                        width: double.maxFinite,
                        title: 'Send code',
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        backgroundColor: disable ? AppColor.platinum : null,
                        textStyle:
                            disable ? AppFont.semiBold(color: AppColor.philippineSilver) : null,
                      );
                    }),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
