import 'package:chat_app/src/configs/resources/barrel_resources.dart';
import 'package:chat_app/src/custom_widgets/primary_button.dart';
import 'package:chat_app/src/utils/size_config.dart';
import 'package:flutter/material.dart';

class ButtonBack extends StatelessWidget {
  const ButtonBack({
    super.key,
    this.voidCallBack,
  });
  final VoidCallback? voidCallBack;

  @override
  Widget build(BuildContext context) {
    return PrimaryButton(
      onTap: () {
        if (voidCallBack != null) {
          voidCallBack?.call();
        } else {
          Navigator.of(context).pop();
        }
      },
      borderRadius: appDefaultBorderRadius,
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          borderRadius: appDefaultBorderRadius,
          color: AppColor.white.withOpacity(0.67),
          boxShadow: [
            BoxShadow(
                offset: const Offset(6, 12),
                blurRadius: 24,
                color: const Color(0xFFD3D1D8).withOpacity(0.3)),
          ],
        ),
        child: const Icon(Icons.arrow_back_ios_new_rounded),
      ),
    );
  }
}
