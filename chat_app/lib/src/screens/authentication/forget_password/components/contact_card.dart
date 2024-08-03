import 'package:chat_app/src/configs/resources/barrel_resources.dart';
import 'package:chat_app/src/custom_widgets/circle_container.dart';
import 'package:chat_app/src/custom_widgets/tap_area.dart';
import 'package:chat_app/src/utils/size_config.dart';
import 'package:flutter/material.dart';

class ContactCard extends StatelessWidget {
  const ContactCard({
    super.key,
    required this.name,
    required this.description,
    required this.icon,
    this.selected = false,
    this.onTap,
  });
  final String name;
  final String description;
  final Widget icon;
  final bool selected;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return TapArea(
      onTap: onTap,
      borderRadius: BorderRadius.circular(10),
      backgroundColor: AppColor.white,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        decoration: BoxDecoration(
          color: AppColor.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: selected ? AppColor.chineseBlack : Colors.transparent,
          ),
          boxShadow: [
            BoxShadow(
              offset: const Offset(0, 20),
              blurRadius: 20,
              color: AppColor.white.withOpacity(0.5),
            )
          ],
        ),
        child: _child(),
      ),
    );
  }

  Widget _child() {
    return Row(
      children: [
        CircleContainer(
          backgroundColor: AppColor.jet.withOpacity(0.1),
          child: icon,
        ),
        const GapW(16),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              name,
              style: AppFont.semiBold(fontSize: 18),
            ),
            Text(
              description,
              style: AppFont.regular(
                color: AppColor.philippineSilver,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
