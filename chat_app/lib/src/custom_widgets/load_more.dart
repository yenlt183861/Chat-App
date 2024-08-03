import 'package:chat_app/src/utils/size_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class LoadMore extends StatelessWidget {
  const LoadMore({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomFooter(
      builder: (context, mode) => Center(
        child: Container(
          padding: EdgeInsets.only(top: 20, bottom: SizeConfig.paddingBottom),
          child: const CupertinoActivityIndicator(),
        ),
      ),
    );
  }
}
