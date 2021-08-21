import 'package:get_it/get_it.dart';

final sl = GetIt.instance;

Future<void> init() async {
  initInjections(sl);
}

Future<void> initInjections(GetIt serviceLocator) async {}