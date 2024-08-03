import 'package:chat_app/generated/assets.gen.dart';
import 'package:chat_app/src/configs/resources/barrel_resources.dart';
import 'package:chat_app/src/custom_widgets/custom_text_field/custom_text_form_field.dart';
import 'package:chat_app/src/utils/validators.dart';
import 'package:flutter/material.dart';

class PasswordInput extends StatefulWidget {
  const PasswordInput({
    super.key,
    this.controller,
  });
  final TextEditingController? controller;

  @override
  State<PasswordInput> createState() => _PasswordInputState();
}

class _PasswordInputState extends State<PasswordInput> {
  bool _obscureText = true;
  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
        controller: widget.controller,
        prefixIcon: Icon(
          Icons.lock_outlined,
          color: AppColor.chineseBlack.withOpacity(0.8),
        ),
        obscureText: _obscureText,
        hintText: 'Password',
        validator: (p0) {
          final value = p0?.trim();
          if (value == null || value.isEmpty) {
            return 'Please enter your account password';
          }
          return Validators.validatePassword(value);
        },
        suffixIcon: GestureDetector(
          onTap: () {
            setState(() {
              _obscureText = !_obscureText;
            });
          },
          child: !_obscureText
              ? Assets.icons.eye.svg(fit: BoxFit.scaleDown)
              : Assets.icons.eyeOff.svg(fit: BoxFit.scaleDown),
        ));
  }
}
