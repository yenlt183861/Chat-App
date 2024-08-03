import 'package:chat_app/src/configs/resources/barrel_resources.dart';
import 'package:chat_app/src/custom_widgets/custom_text_field/barrel_text_field.dart';
import 'package:chat_app/src/custom_widgets/primary_button.dart';
import 'package:chat_app/src/custom_widgets/tap_area.dart';
import 'package:chat_app/src/screens/app_router.dart';
import 'package:chat_app/src/utils/size_config.dart';
import 'package:flutter/material.dart';

class RegisterForm extends StatefulWidget {
  const RegisterForm({
    super.key,
  });

  @override
  State<RegisterForm> createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const EmailInput(),
          const GapH(20),
          CustomTextFormField(
            prefixIcon: Icon(
              Icons.email_outlined,
              color: AppColor.chineseBlack.withOpacity(0.8),
            ),
            hintText: 'Enter Your Email',
            keyboardType: TextInputType.emailAddress,
          ),
          const GapH(20),
          const PasswordInput(),
          const GapH(20),
          PrimaryButton(
            onTap: () {
              if (_formKey.currentState?.validate() ?? false) {
                Navigator.of(context).pushNamed(AppRouter.PHONE_REGISTER_SCREEN);
              }
            },
            width: double.maxFinite,
            backgroundColor: AppColor.tuftsBlue,
            textStyle: AppFont.semiBold(
              color: AppColor.white,
            ),
            title: 'Register',
            borderRadius: BorderRadius.circular(20),
            padding: const EdgeInsets.symmetric(vertical: 16),
          ),
          const GapH(16),
          Align(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Already have an account? ',
                  style: AppFont.regular(color: AppColor.philippineSilver),
                ),
                TapArea(
                  onTap: () {},
                  child: Text(
                    'Sign in',
                    style: AppFont.semiBold(color: AppColor.tuftsBlue),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
