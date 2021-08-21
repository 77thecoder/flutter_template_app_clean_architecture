import 'dart:convert';

import 'package:amur/core/config/config.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_flavor/flutter_flavor.dart';

class ConfigReader {
  static Map<String, dynamic> _config = {};

  static String get getFilename {
    switch (Config.appFlavor) {
      case Flavor.prod:
        return 'config_prod.json';
      case Flavor.dev:
        return 'config_dev.json';
      case Flavor.test:
        return 'config_test.json';
    }
  }

  static String get getEnv {
    switch (Config.appFlavor) {
      case Flavor.prod:
        return 'prod';
      case Flavor.dev:
        return 'dev';
      case Flavor.test:
        return 'test';
    }
  }

  static Future<void> initialize() async {
    final String filename = getFilename;
    final configString = await rootBundle.loadString('config/$filename');
    _config = json.decode(configString) as Map<String, dynamic>;

    FlavorConfig.instance;

    FlavorConfig(
      name: getEnv,
      location: BannerLocation.bottomEnd,
      variables: _config,
    );
  }
}
