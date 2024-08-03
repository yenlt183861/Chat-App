import 'package:chat_app/generated/l10n.dart';
import 'package:chat_app/src/configs/resources/app_font.dart';
import 'package:flutter/material.dart';
import 'package:one_context/one_context.dart';

class PopupNotification {
  static Future<bool?> showMessage({
    required String title,
    required String message,
    bool hiddenButtonLeft = true,
    bool hiddenButtonRight = false,
    String? titleButtonLeft,
    String? titleButtonRight,
    Function? pressButtonLeft,
    Function? pressButtonRight,
    TextAlign? textAlign,
    Alignment? alignment,
    bool barrierDismissible = false,
  }) async {
    return OneContext.instance.showDialog<bool>(
      barrierDismissible: barrierDismissible,
      builder: (context) {
        return AlertDialog(
          backgroundColor: Colors.white,
          surfaceTintColor: Colors.transparent,
          contentPadding: const EdgeInsets.all(0),
          scrollable: true,
          shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(12))),
          content: Column(
            children: [
              Container(
                alignment: alignment ?? Alignment.center,
                margin: const EdgeInsets.only(top: 20, left: 20, right: 20),
                child: Text(
                  title,
                  textAlign: textAlign ?? TextAlign.center,
                  style: AppFont.medium(),
                ),
              ),
              Container(
                alignment: alignment ?? Alignment.center,
                margin: const EdgeInsets.only(top: 15, left: 20, right: 20),
                child: Text(
                  message,
                  textAlign: textAlign ?? TextAlign.center,
                  style: AppFont.regular(fontSize: 14),
                ),
              ),
              Container(
                height: 40,
                margin: const EdgeInsets.only(top: 20),
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                  if (hiddenButtonLeft == false)
                    Expanded(
                        flex: 5,
                        child: GestureDetector(
                          onTap: () {
                            pressButtonLeft?.call();
                            Navigator.of(context).pop();
                          },
                          child: Container(
                            color: Colors.transparent,
                            child: Center(
                              child: Text(
                                titleButtonLeft ?? S.current.title_cancel,
                                style: AppFont.medium(fontSize: 14),
                              ),
                            ),
                          ),
                        )),
                  if (!hiddenButtonRight)
                    Expanded(
                        flex: 5,
                        child: GestureDetector(
                          onTap: () {
                            pressButtonRight?.call();
                            Navigator.of(context).pop(true);
                          },
                          child: Container(
                            color: Colors.transparent,
                            child: Center(
                              child: Text(
                                titleButtonRight ?? S.current.title_agree,
                                style: AppFont.medium(fontSize: 14),
                              ),
                            ),
                          ),
                        )),
                ]),
              )
            ],
          ),
        );
      },
    );
  }
}

void showErrorInternetMessage() {
  PopupNotification.showMessage(
    title: "Lỗi",
    message: "cannot_access_internet",
    hiddenButtonRight: true,
  );
}
