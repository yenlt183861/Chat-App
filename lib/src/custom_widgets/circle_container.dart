import 'package:chat_app/src/configs/resources/barrel_resources.dart';
import 'package:chat_app/src/custom_widgets/tap_area.dart';
import 'package:flutter/material.dart';

class CircleContainer extends StatelessWidget {
  const CircleContainer({
    super.key,
    this.onTap,
    this.child,
    this.backgroundColor,
    this.height = 48,
    this.padding = 8,
  });
  final Function? onTap;
  final Widget? child;
  final Color? backgroundColor;
  final double height;
  final double padding;

  @override
  Widget build(BuildContext context) {
    return TapArea(
      onTap: () {
        onTap?.call();
      },
      child: Container(
        padding: EdgeInsets.all(padding),
        width: height,
        height: height,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: backgroundColor ?? AppColor.philippineSilver.withOpacity(0.08),
        ),
        child: child,
      ),
    );
  }
}
