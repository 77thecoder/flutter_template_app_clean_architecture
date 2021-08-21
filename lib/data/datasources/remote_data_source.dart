import 'package:amur/data/models/login_model.dart';

abstract class RemoteDataSource {
  Future<LoginModel> login(final String username, final String password);
}