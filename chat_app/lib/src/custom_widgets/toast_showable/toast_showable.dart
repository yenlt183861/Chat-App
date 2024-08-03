import 'package:bot_toast/bot_toast.dart';
import 'package:chat_app/src/configs/resources/barrel_resources.dart';
import 'package:chat_app/src/utils/size_config.dart';
import 'package:flutter/material.dart';

import 'toast_message_type.dart';

class ToastShowable {
  static const List<DismissDirection> _dismissDirections = [DismissDirection.up];
  static void show({
    required ToastMessageType toastType,
    required String message,
  }) {
    BotToast.showAnimationWidget(
      clickClose: true,
      allowClick: true,
      onlyOne: true,
      crossPage: true,
      duration: const Duration(seconds: 1),
      backButtonBehavior: BackButtonBehavior.close,
      groupKey: '_notificationKey',
      toastBuilder: (cancelFunc) {
        return _DismissToast(
          dismissDirections: _dismissDirections,
          slideOffFunc: cancelFunc,
          child: Container(
            margin: EdgeInsets.only(top: 20.0),
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 8,
            ),
            decoration: BoxDecoration(
              color: AppColor.white,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Row(
              children: [
                toastType.icon,
                const GapW(12),
                Expanded(
                  child: Text(
                    message,
                    style: AppFont.medium(color: toastType.textColor),
                  ),
                ),
              ],
            ),
          ),
        );
      },
      animationDuration: const Duration(milliseconds: 300),
    );
  }
}

class _DismissToast extends StatefulWidget {
  const _DismissToast({
    required this.child,
    required this.slideOffFunc,
    this.dismissDirections,
  });
  final Widget child;
  final Function slideOffFunc;
  final List<DismissDirection>? dismissDirections;

  @override
  State<_DismissToast> createState() => __DismissToastState();
}

class __DismissToastState extends State<_DismissToast> {
  Future<bool> confirmDismiss(DismissDirection direction) async {
    widget.slideOffFunc();
    return true;
  }

  final Key _key = UniqueKey();
  @override
  Widget build(BuildContext context) {
    var child = widget.child;
    if (widget.dismissDirections != null && widget.dismissDirections!.isNotEmpty) {
      for (final direction in widget.dismissDirections!) {
        child = Dismissible(
          direction: direction,
          key: _key,
          confirmDismiss: confirmDismiss,
          child: child,
        );
      }
    }
    return child;
  }
}
