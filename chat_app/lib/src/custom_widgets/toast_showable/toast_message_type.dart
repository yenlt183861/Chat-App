import 'package:chat_app/generated/assets.gen.dart';
import 'package:chat_app/src/configs/resources/app_color.dart';
import 'package:flutter/material.dart';

enum ToastMessageType {
  success,
  error,
}

extension ToastMessageTypeEx on ToastMessageType {
  Color get color {
    switch (this) {
      case ToastMessageType.success:
        return AppColor.tuftsBlue;
      case ToastMessageType.error:
        return AppColor.jasper;
    }
  }

  Widget get icon {
    switch (this) {
      case ToastMessageType.success:
        return Assets.icons.success.svg();
      case ToastMessageType.error:
        return Assets.icons.failure.svg();
    }
  }

  Color get textColor {
    switch (this) {
      case ToastMessageType.success:
        return AppColor.tuftsBlue;
      case ToastMessageType.error:
        return AppColor.jasper;
    }
  }
}
