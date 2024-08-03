import 'package:chat_app/src/configs/resources/barrel_resources.dart';
import 'package:chat_app/src/custom_widgets/custom_text_field/custom_text_form_field.dart';
import 'package:chat_app/src/utils/validators.dart';
import 'package:flutter/material.dart';

class EmailInput extends StatelessWidget {
  const EmailInput({
    super.key,
    this.controller,
  });
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      controller: controller,
      prefixIcon: Icon(
        Icons.email_outlined,
        color: AppColor.chineseBlack.withOpacity(0.8),
      ),
      keyboardType: TextInputType.emailAddress,
      hintText: 'Enter your email',
      validator: (p0) {
        final value = p0?.trim();
        if (value == null || value.isEmpty) {
          return 'Please enter your email.';
        }
        if (!Validators.isValidEmail(value)) {
          return 'Email address is invalid.';
        }
        return null;
      },
    );
  }
}
