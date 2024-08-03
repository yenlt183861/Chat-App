// ignore_for_file: no_logic_in_create_state

import 'package:chat_app/src/configs/resources/app_color.dart';
import 'package:chat_app/src/configs/resources/app_font.dart';
import 'package:chat_app/src/utils/size_config.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'tap_area.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    super.key,
    this.child,
    this.title = 'OK',
    this.onTap,
    this.onLongTap,
    this.width,
    this.textStyle,
    this.boxDecoration,
    this.padding,
    this.borderRadius,
    this.backgroundColor,
    this.colorBorder,
    this.tapAreaStyle,
    this.disable = false,
  });
  final Widget? child;
  final String title;

  final VoidCallback? onTap;
  final VoidCallback? onLongTap;

  final double? width;
  final TextStyle? textStyle;

  final BoxDecoration? boxDecoration;
  final EdgeInsetsGeometry? padding;
  final BorderRadius? borderRadius;
  final Color? backgroundColor;
  final Color? colorBorder;

  /// style for Tap area Web
  final TapAreaStyle? tapAreaStyle;

  final bool disable;

  @override
  Widget build(BuildContext context) {
    return TapArea(
      onTap: onTap,
      onLongTap: onLongTap,
      tapAreaStyle: tapAreaStyle,
      disable: disable,
      borderRadius: borderRadius ?? appDefaultBorderRadius,
      backgroundColor: backgroundColor ?? AppColor.tuftsBlue,
      child: child ??
          Container(
            width: width,
            padding: padding ?? const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            decoration: boxDecoration ??
                BoxDecoration(
                  borderRadius: borderRadius ?? appDefaultBorderRadius,
                  color: defaultTargetPlatform == TargetPlatform.android
                      ? Colors.transparent
                      : backgroundColor ?? AppColor.tuftsBlue,
                  border: Border.all(
                    color: colorBorder ?? Colors.transparent,
                  ),
                ),
            child: Text(
              title,
              textAlign: TextAlign.center,
              style: textStyle ?? AppFont.semiBold(color: AppColor.white),
            ),
          ),
    );
  }
}
