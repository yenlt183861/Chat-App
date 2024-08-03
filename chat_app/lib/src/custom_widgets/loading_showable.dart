import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoadingShowAble {
  static final LoadingShowAble _instance = LoadingShowAble.internal();

  factory LoadingShowAble() => _instance;

  LoadingShowAble.internal();

  static int referenceCount = 0;
  static double? _radiusIndicator;
  static Color? _colorIndicator;

  static void showLoading() {
    if (referenceCount == 0) {
      BotToast.showCustomLoading(
        clickClose: false,
        allowClick: false,
        backButtonBehavior: BackButtonBehavior.none,
        ignoreContentClick: true,
        animationDuration: const Duration(milliseconds: 200),
        animationReverseDuration: const Duration(milliseconds: 200),
        align: Alignment.center,
        toastBuilder: (cancelFunc) {
          return Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
            ),
            child: CupertinoActivityIndicator(
              radius: _radiusIndicator ?? 16,
              color: _colorIndicator,
            ),
          );
        },
      );
    }
    referenceCount++;
  }

  static void hideLoading() {
    referenceCount -= 1;
    if (referenceCount == 0) {
      BotToast.closeAllLoading();
    }
  }

  static void forceHide() {
    referenceCount = 0;
    BotToast.closeAllLoading();
  }
}
