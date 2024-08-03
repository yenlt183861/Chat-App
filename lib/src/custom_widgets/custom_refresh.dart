import 'package:flutter/cupertino.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class CustomRefresh extends StatelessWidget {
  const CustomRefresh({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomHeader(
      builder: (context, mode) => Center(
        child: Container(
          padding: const EdgeInsets.only(bottom: 20),
          child: const CupertinoActivityIndicator(),
        ),
      ),
    );
  }
}
