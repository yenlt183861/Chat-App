import 'package:chat_app/generated/assets.gen.dart';
import 'package:chat_app/src/custom_widgets/circle_container.dart';
import 'package:chat_app/src/utils/size_config.dart';
import 'package:flutter/material.dart';

class RegisterSocial extends StatelessWidget {
  const RegisterSocial({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleContainer(
            child: Assets.icons.google.svg(),
          ),
          const GapW(20),
          CircleContainer(
            child: Assets.icons.facebook.svg(),
          ),
          const GapW(20),
          CircleContainer(
            child: Assets.icons.twitter.svg(),
          ),
        ],
      ),
    );
  }
}
