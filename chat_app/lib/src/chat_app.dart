import 'package:chat_app/src/configs/resources/barrel_resources.dart';
import 'package:bot_toast/bot_toast.dart';
import 'package:chat_app/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:one_context/one_context.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

import 'screens/app_router.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return RefreshConfiguration(
      headerBuilder: () => const ClassicHeader(
        refreshStyle: RefreshStyle.Follow,
        completeDuration: Duration(milliseconds: 200),
      ),
      footerBuilder: () => const ClassicFooter(
        loadStyle: LoadStyle.ShowWhenLoading,
        completeDuration: Duration(milliseconds: 200),
      ),
      headerTriggerDistance: 80,
      springDescription:
          // ignore: prefer_const_constructors
          SpringDescription(stiffness: 170, damping: 16, mass: 1.9),
      maxOverScrollExtent: 100,
      maxUnderScrollExtent: 0,
      enableScrollWhenRefreshCompleted: true,
      enableLoadingWhenFailed: true,
      hideFooterWhenNotFull: false,
      enableBallisticLoad: true,
      child: MaterialApp(
        title: S.current.app_name,
        debugShowCheckedModeBanner: false,
        localizationsDelegates: const [
          S.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        localeResolutionCallback: (deviceLocale, supportedLocales) {
          if (supportedLocales.map((e) => e.languageCode).contains(deviceLocale?.languageCode)) {
            return deviceLocale;
          } else {
            return const Locale('en', '');
          }
        },
        supportedLocales: S.delegate.supportedLocales,
        onGenerateRoute: AppRouter.onGenerateRoute,
        initialRoute: AppRouter.LOGIN_SCREEN,
        navigatorKey: OneContext().navigator.key,
        builder: (context, child) {
          child = BotToastInit()(context, child);
          child = OneContext().builder(context, child);
          return child;
        },
        navigatorObservers: [
          BotToastNavigatorObserver(),
        ],
        theme: AppTheme.light,
      ),
    );
  }
}
