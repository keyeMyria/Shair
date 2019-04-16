import 'package:flutter/material.dart';

import 'package:flutter/services.dart';
import 'src/ShairApp.dart';

main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarIconBrightness: Brightness.dark,
    statusBarColor: Colors.grey[200], // status bar color
  ));
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);

  runApp(ShairApp());
}
