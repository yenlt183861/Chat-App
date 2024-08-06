import 'package:chat_app/src/configs/resources/app_font.dart';
import 'package:chat_app/src/configs/resources/barrel_resources.dart';
import 'package:chat_app/src/custom_widgets/custom_text_field/barrel_text_field.dart';
import 'package:chat_app/src/custom_widgets/primary_button.dart';
import 'package:chat_app/src/screens/app_router.dart';
import 'package:chat_app/src/screens/authentication/login/bloc/login_bloc.dart';
import 'package:chat_app/src/utils/size_config.dart';
import 'package:flutter/material.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>();
  late TextEditingController emailCtrl, passwordCtrl;

  @override
  void initState() {
    super.initState();
    emailCtrl = TextEditingController();
    passwordCtrl = TextEditingController();
  }

  @override
  void dispose() {
    emailCtrl.dispose();
    passwordCtrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          EmailInput(controller: emailCtrl),
          const GapH(20),
          PasswordInput(controller: passwordCtrl),
          const GapH(20),
          Align(
            alignment: Alignment.centerRight,
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed(AppRouter.FORGET_PASSWORD_SCREEN);
              },
              child: Text(
                'Forget password?',
                style: AppFont.regular(
                  fontSize: 14,
                  color: AppColor.crayola,
                ),
              ),
            ),
          ),
          const GapH(20),
          PrimaryButton(
            onTap: () {
              if (_formKey.currentState?.validate() ?? false) {
                context.loginBloc.add(SubmitLoginForm(
                  email: emailCtrl.text.trim(),
                  password: passwordCtrl.text.trim(),
                ));
              }
            },
            width: double.maxFinite,
            textStyle: AppFont.semiBold(
              color: AppColor.white,
            ),
            title: 'Login',
            borderRadius: appDefaultBorderRadius,
            padding: const EdgeInsets.symmetric(vertical: 16),
          ),
        ],
      ),
    );
  }
}
