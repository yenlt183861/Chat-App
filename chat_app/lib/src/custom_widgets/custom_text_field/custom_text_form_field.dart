import 'package:chat_app/src/configs/resources/barrel_resources.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    this.maxLength,
    this.controller,
    this.keyboardType,
    this.validator,
    this.obscureText = false,
    this.inputFormatters,
    this.onTapOutside,
    this.onEditingComplete,
    this.readOnly = false,
    this.hintText = '',
    this.borderRadius = 20,
    this.suffixIcon,
    this.prefixIcon,
    this.contentPadding,
    this.colorEnabledBorderSide,
    this.colorFocusedBorderSide,
    this.colorErrorBorderSide,
    this.fillColor,
    this.textStyle,
    this.hintTextStyle,
    this.gapPadding,
  });
  final int? maxLength;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final String? Function(String?)? validator;
  final bool obscureText;
  final List<TextInputFormatter>? inputFormatters;
  final Function? onTapOutside;
  final Function? onEditingComplete;
  final bool readOnly;
  final String hintText;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final EdgeInsetsGeometry? contentPadding;

  final Color? fillColor;
  final TextStyle? textStyle;
  final TextStyle? hintTextStyle;

  // decoration border
  final double? gapPadding;
  final Color? colorEnabledBorderSide;
  final Color? colorFocusedBorderSide;
  final Color? colorErrorBorderSide;
  final double borderRadius;

  @override
  Widget build(BuildContext context) {
    final errorBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(borderRadius),
      borderSide: BorderSide(
        color: colorErrorBorderSide ?? AppColor.jasper,
      ),
      gapPadding: gapPadding ?? 4.0,
    );
    final enabledBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(borderRadius),
      borderSide: BorderSide(
        color: colorEnabledBorderSide ?? AppColor.white,
      ),
      gapPadding: gapPadding ?? 4.0,
    );

    final focusedBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(borderRadius),
      borderSide: BorderSide(
        color: colorFocusedBorderSide ?? AppColor.tuftsBlue,
      ),
      gapPadding: gapPadding ?? 4.0,
    );
    return TextFormField(
      maxLength: maxLength,
      style: textStyle ?? AppFont.regular(color: AppColor.chineseBlack),
      controller: controller,
      keyboardType: keyboardType ?? TextInputType.text,
      validator: validator,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      inputFormatters: inputFormatters,
      obscureText: obscureText,
      onTapOutside: (event) {
        FocusManager.instance.primaryFocus?.unfocus();
        onTapOutside?.call();
      },
      onEditingComplete: () {
        FocusManager.instance.primaryFocus?.unfocus();
        onEditingComplete?.call();
      },
      readOnly: readOnly,
      decoration: InputDecoration(
        counterText: '',
        fillColor: fillColor ?? AppColor.white,
        filled: true,
        hintText: hintText,
        hintStyle: hintTextStyle ?? AppFont.regular(color: AppColor.philippineSilver),
        errorStyle: AppFont.regular(color: AppColor.jasper, fontSize: 14),
        border: enabledBorder,
        enabledBorder: enabledBorder,
        focusedBorder: focusedBorder,
        errorBorder: errorBorder,
        focusedErrorBorder: errorBorder,
        suffixIcon: suffixIcon,
        contentPadding: contentPadding ?? const EdgeInsets.symmetric(horizontal: 0, vertical: 20),
        prefixIcon: prefixIcon,
      ),
    );
  }
}
