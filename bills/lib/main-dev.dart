import 'package:flutter/material.dart';

import 'package:bills/src/app_config.dart';
import 'package:bills/src/app.dart';

void main() {
  runApp(
    AppConfig(
      displayName: 'Bills App [DEV]',
      child: KApp(),
    ),
  );
}
