import 'package:chat_app/src/configs/resources/app_color.dart';
import 'package:flutter/material.dart';

import 'app_font.dart';

class AppTheme {
  static ThemeData light = ThemeData(
    backgroundColor: AppColor.ghostWhite,
    useMaterial3: true,
    appBarTheme: _lightAppBarTheme(),
    dialogTheme: DialogTheme(
      backgroundColor: AppColor.white,
      surfaceTintColor: Colors.transparent,
    ),
    dialogBackgroundColor: AppColor.white,
    dividerColor: AppColor.lavenderGray,
    colorScheme: _lightColorScheme(),
    textTheme: _lightTextTheme(),
  );

  static AppBarTheme _lightAppBarTheme() {
    return AppBarTheme(
      backgroundColor: AppColor.white,
      elevation: 0,
      foregroundColor: AppColor.white,
      titleTextStyle: AppFont.semiBold(
        color: AppColor.black,
      ),
      iconTheme: IconThemeData(
        size: 24,
        color: AppColor.black,
      ),
    );
  }

  static TextTheme _lightTextTheme() {
    return TextTheme(
      bodyText1: AppFont.regular(color: AppColor.chineseBlack),
      bodyText2: AppFont.regular(color: AppColor.chineseBlack),
      // displaySmall: AppFont.regular(color: AppColor.black),
    );
  }

  static ColorScheme _lightColorScheme() {
    return ColorScheme(
      background: AppColor.ghostWhite,
      brightness: Brightness.light,
      primary: AppColor.tuftsBlue,
      onPrimary: AppColor.white,
      secondary: AppColor.black,
      onSecondary: AppColor.black,
      error: AppColor.white,
      onError: AppColor.white,
      onBackground: AppColor.white,
      surface: AppColor.white,
      onSurface: AppColor.white,
    );
  }
}
