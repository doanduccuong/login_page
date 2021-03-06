import 'package:flutter/material.dart';
import 'dart:async';
import 'package:flutter/services.dart';

import 'app.dart';
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  WidgetsFlutterBinding.ensureInitialized();

  runZonedGuarded(() {
    runApp( const LogInApp());
  }, (error, stackTrace) {});
}