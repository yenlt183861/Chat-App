import 'dart:io' show Platform;
import 'package:flutter/material.dart';

import 'generated/l10n.dart';
import 'src/chat_app.dart';

late String apiKey;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final localeName = Platform.localeName.split('_');
  final languageCode = localeName[0];
  String countryCode = '';
  try {
    countryCode = localeName[1];
  } on RangeError catch (_) {}
  await S.load(Locale(languageCode, countryCode));
  runApp(const MyApp());
}
