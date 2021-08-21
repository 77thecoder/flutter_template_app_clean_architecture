import 'dart:convert';

import 'package:amur/core/errors/exceptions.dart';
import 'package:amur/core/utils/constants.dart';
import 'package:amur/data/datasources/local_data_source.dart';
import 'package:amur/data/models/login_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LocalDataSourceImpl extends LocalDataSource {
  final SharedPreferences sharedPreferences;

  LocalDataSourceImpl({required this.sharedPreferences});

  @override
  Future<LoginModel> login() {
    // TODO: implement login
    throw UnimplementedError();
  }

  @override
  Future<LoginModel> getLastToken() async {
    final String? token = sharedPreferences.getString(ACCESS_TOKEN);

    if (token == null) {
      throw CacheException();
    }

    final String json = '{"token": "$token"}';
    return Future.value(LoginModel.fromJson(jsonDecode(json)));
  }

}