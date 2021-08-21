import 'package:amur/core/errors/failures.dart';
import 'package:amur/data/models/login_model.dart';
import 'package:dartz/dartz.dart';

abstract class Repository {
  Future<Either<Failure, LoginModel>> fetchCachedToken();
  Future<Either<Failure, LoginModel>> login(final String username, final String password);
}