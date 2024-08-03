import 'package:chat_app/src/configs/resources/barrel_resources.dart';
import 'package:chat_app/src/screens/authentication/forget_password/bloc/forget_password_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pinput/pinput.dart';

class PinCode extends StatefulWidget {
  const PinCode({super.key});

  @override
  State<PinCode> createState() => _PinCodeState();
}

class _PinCodeState extends State<PinCode> {
  late FocusNode pinputFocusNode;
  late TextEditingController pinController;

  @override
  void initState() {
    super.initState();
    pinputFocusNode = FocusNode();
    pinputFocusNode.requestFocus();
    pinController = TextEditingController();
  }

  @override
  void dispose() {
    if (pinputFocusNode.hasFocus) {
      pinputFocusNode.unfocus();
    }
    pinputFocusNode.dispose();
    pinController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      width: 56,
      height: 56,
      textStyle: AppFont.semiBold(fontSize: 20, color: AppColor.chineseBlack),
      decoration: BoxDecoration(
        border: Border.all(
          color: AppColor.philippineSilver,
        ),
        borderRadius: BorderRadius.circular(16),
      ),
    );

    final focusedPinTheme = defaultPinTheme.copyDecorationWith(
      border: Border.all(color: AppColor.tuftsBlue),
      borderRadius: BorderRadius.circular(16),
    );
    final submittedPinTheme = defaultPinTheme;
    final errorPinTheme = defaultPinTheme.copyDecorationWith(
      border: Border.all(color: AppColor.jasper),
    );
    return Pinput(
      controller: pinController,
      focusNode: pinputFocusNode,
      defaultPinTheme: defaultPinTheme,
      focusedPinTheme: focusedPinTheme,
      submittedPinTheme: submittedPinTheme,
      errorPinTheme: errorPinTheme,
      errorTextStyle: AppFont.regular(color: AppColor.jasper, fontSize: 14),
      inputFormatters: [
        FilteringTextInputFormatter.digitsOnly,
      ],
      validator: (s) {
        return null;
      },
      pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
      showCursor: true,
      onTapOutside: (event) {
        context.forgetPasswordBloc
            .add(SetVerificationCodeForgetPasswordEvent(code: pinController.text.trim()));
        FocusManager.instance.primaryFocus?.unfocus();
      },
      onChanged: (value) {
        context.forgetPasswordBloc
            .add(SetVerificationCodeForgetPasswordEvent(code: pinController.text.trim()));
      },
      onCompleted: (pin) {
        context.forgetPasswordBloc.add(SetVerificationCodeForgetPasswordEvent(code: pin));
        FocusManager.instance.primaryFocus?.unfocus();
      },
    );
  }
}
