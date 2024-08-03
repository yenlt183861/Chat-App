import 'package:chat_app/generated/l10n.dart';
import 'package:chat_app/src/custom_widgets/loading_showable.dart';
import 'package:chat_app/src/datas/enums/status_loading.dart';
import 'package:chat_app/src/utils/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/home_bloc.dart';
import 'bloc/home_state.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeBloc(),
      child: const _Body(),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body();

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return BlocListener<HomeBloc, HomeState>(
      listenWhen: (p, c) => p.statusLoading != c.statusLoading,
      listener: (context, state) {
        if (state.statusLoading.isLoading) {
          LoadingShowAble.showLoading();
        } else if (state.statusLoading.isError) {
          LoadingShowAble.forceHide();
        } else {
          LoadingShowAble.forceHide();
        }
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text(S.current.app_name),
        ),
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [],
          ),
        ),
      ),
    );
  }
}
