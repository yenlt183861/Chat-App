import 'package:chat_app/src/configs/resources/barrel_resources.dart';
import 'package:chat_app/src/custom_widgets/custom_text_field/custom_text_form_field.dart';
import 'package:chat_app/src/custom_widgets/primary_button.dart';
import 'package:chat_app/src/custom_widgets/tap_area.dart';
import 'package:chat_app/src/screens/app_router.dart';
import 'package:chat_app/src/utils/size_config.dart';
import 'package:flutter/material.dart';

class PhoneRegisterForm extends StatefulWidget {
  const PhoneRegisterForm({
    super.key,
  });

  @override
  State<PhoneRegisterForm> createState() => _PhoneRegisterFormState();
}

class _PhoneRegisterFormState extends State<PhoneRegisterForm> {
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
            onTap: () {
              Navigator.of(context).pushNamed(AppRouter.VERIFY_PHONE_SCREEN);
            },
            width: double.maxFinite,
            textStyle: AppFont.semiBold(color: AppColor.white),
            title: 'Verification',
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
