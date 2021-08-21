import 'package:amur/data/models/login_model.dart';

abstract class LocalDataSource {
  Future<LoginModel> login();
  Future<LoginModel> getLastToken();
}