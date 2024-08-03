import 'package:chat_app/src/configs/resources/app_font.dart';
import 'package:flutter/material.dart';

class AppBarCustom extends StatelessWidget implements PreferredSizeWidget {
  const AppBarCustom({
    super.key,
    this.height,
    this.backgroundColor,
    this.actions,
    this.title,
    this.textStyleTitle,
    this.paddingLeft,
    this.isCallBack = false,
    this.leadingWidget,
  });
  final double? height;
  final Color? backgroundColor;
  final List<Widget>? actions;
  final String? title;
  final TextStyle? textStyleTitle;
  final double? paddingLeft;
  final bool isCallBack;
  final Widget? leadingWidget;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      scrolledUnderElevation: 0,
      leadingWidth: (AppBar().leadingWidth ?? 56.0) + (paddingLeft ?? 0.0),
      leading: leadingWidget ??
          (isCallBack
              ? GestureDetector(
                  onTap: () => Navigator.of(context).pop(),
                  child: Container(
                    color: Colors.transparent,
                    child: const Icon(Icons.arrow_back),
                  ),
                )
              : null),
      automaticallyImplyLeading: false,
      title: title != null
          ? Text(
              title!,
              style: textStyleTitle ?? AppFont.medium(fontSize: 22),
            )
          : null,
      elevation: 0,
      centerTitle: true,
      backgroundColor: backgroundColor,
      actions: actions,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height ?? kToolbarHeight);
}
