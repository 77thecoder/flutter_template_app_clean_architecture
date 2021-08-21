import 'package:amur/app.dart';
import 'package:amur/core/config/config_reader.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:amur/injection_container.dart' as di;

Future<void> mainCommon() async {
  WidgetsFlutterBinding.ensureInitialized();

  await ConfigReader.initialize();
  await di.init();
  await SystemChrome.setPreferredOrientations(<DeviceOrientation>[
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown
  ]).then((_) => runApp(MyApp()));
}