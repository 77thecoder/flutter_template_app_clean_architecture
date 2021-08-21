import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class RestClient {
  final SharedPreferences sharedPreferences;
  final Dio dio;

  BaseOptions options = BaseOptions(
    // connectTimeout: 30000,
    // receiveTimeout: 3000,
  );

  RestClient({required this.sharedPreferences, required this.dio}) {
    // dio.options.headers = headers;
    dio.interceptors.add(InterceptorsWrapper(
      onRequest: (RequestOptions options, handler) {
        final signedOptions = requestInterceptor(options);
        handler.next(signedOptions);
      },
      onError: (DioError error, handler) async {
        debugPrint('intercepted onError $error');
        handler.next(error);
      },
    ));
  }

  Dio get client => dio;

  RequestOptions requestInterceptor(RequestOptions options) {
    final String? token = sharedPreferences.getString('token');
    if (token != null) {
      options.headers.addAll({'Authorization': 'Token $token'});
    } else {
      options.headers.remove('Authorization');
    }
    return options;
  }
}
