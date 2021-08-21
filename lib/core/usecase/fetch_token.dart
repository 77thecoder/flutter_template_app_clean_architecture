import 'package:amur/core/errors/failures.dart';
import 'package:amur/core/usecase/usecase.dart';
import 'package:amur/data/models/login_model.dart';
import 'package:amur/domain/repositories/repositories.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

class FetchToken extends UseCase<LoginModel, TokenParams> {
  final Repository repository;

  FetchToken(this.repository);

  @override
  Future<Either<Failure, LoginModel>> call(TokenParams params) async {
    return repository.fetchCachedToken();
  }
}

class TokenParams extends Equatable {
  @override
  List<Object> get props => [];
}