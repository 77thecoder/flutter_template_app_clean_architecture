import 'package:amur/core/errors/exceptions.dart';
import 'package:amur/core/errors/failures.dart';
import 'package:amur/data/datasources/local_data_source.dart';
import 'package:amur/data/datasources/remote_data_source.dart';
import 'package:amur/data/models/login_model.dart';
import 'package:amur/domain/repositories/repositories.dart';
import 'package:dartz/dartz.dart';

class RepositoryImpl extends Repository {
  final RemoteDataSource remoteDataSource;
  final LocalDataSource localDataSource;

  RepositoryImpl({required this.remoteDataSource, required this.localDataSource});

  @override
  Future<Either<Failure, LoginModel>> login(final String username, final String password) async {
    final remoteData = await remoteDataSource.login(username, password);
    return Right(LoginModel(token: '1234567890'));
  }

  @override
  Future<Either<Failure, LoginModel>> fetchCachedToken() async {
    try {
      final localData = await localDataSource.getLastToken();
      return Right(localData);
    } on CacheException {
      return Left(CacheFailure());
    }
  }
}