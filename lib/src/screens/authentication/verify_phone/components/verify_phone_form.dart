import 'package:chat_app/src/configs/resources/barrel_resources.dart';
import 'package:chat_app/src/custom_widgets/custom_text_field/custom_text_form_field.dart';
import 'package:chat_app/src/custom_widgets/primary_button.dart';
import 'package:chat_app/src/custom_widgets/tap_area.dart';
import 'package:chat_app/src/utils/size_config.dart';
import 'package:flutter/material.dart';

class VerifyPhoneForm extends StatefulWidget {
  const VerifyPhoneForm({
    super.key,
  });

  @override
  State<VerifyPhoneForm> createState() => _VerifyPhoneFormState();
}

class _VerifyPhoneFormState extends State<VerifyPhoneForm> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomTextFormField(
            prefixIcon: Icon(
              Icons.phone,
              color: AppColor.chineseBlack.withOpacity(0.8),
            ),
            hintText: 'Phone Number',
          ),
          const GapH(20),
          PrimaryButton(
            onTap: () {},
            width: double.maxFinite,
            backgroundColor: AppColor.chineseBlack,
            textStyle: AppFont.semiBold(
              color: AppColor.white,
            ),
            title: 'Verification',
            borderRadius: BorderRadius.circular(20),
            padding: const EdgeInsets.symmetric(vertical: 16),
          ),
          const GapH(12),
          PrimaryButton(
            onTap: () {},
            width: double.maxFinite,
            backgroundColor: AppColor.platinum,
            textStyle: AppFont.semiBold(
              color: AppColor.philippineSilver1,
            ),
            title: 'Later',
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
