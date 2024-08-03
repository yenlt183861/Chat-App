import 'package:chat_app/src/configs/resources/barrel_resources.dart';
import 'package:chat_app/src/custom_widgets/custom_text_field/custom_text_form_field.dart';
import 'package:chat_app/src/utils/validators.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class PhoneInput extends StatelessWidget {
  const PhoneInput({
    super.key,
    this.controller,
  });
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      controller: controller,
      prefixIcon: Icon(
        Icons.phone,
        color: AppColor.chineseBlack.withOpacity(0.8),
      ),
      keyboardType: TextInputType.phone,
      hintText: 'Phone numer',
      maxLength: 11,
      validator: (p0) {
        final value = p0?.trim();
        if (value == null || value.isEmpty) {
          return 'Please enter your phone number!';
        }
        if (!Validators.isValidPhone(value)) {
          return 'Phone number is invalid.';
        }
        return null;
      },
      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
    );
  }
}
