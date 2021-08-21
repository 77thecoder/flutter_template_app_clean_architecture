import 'package:flutter/foundation.dart';

enum Flavor { prod, dev, test }
enum BuildType { debug, release }

class Config {
  static Flavor appFlavor = Flavor.dev;
  static BuildType buildType = kReleaseMode ? BuildType.release : BuildType.debug;
}