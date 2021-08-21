import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  final String message;

  const Failure(this.message) : super();

  @override
  List<Object> get props => [message];
}

class ServerFailure extends Failure {
  ServerFailure(String message) : super(message);

}

class CacheFailure extends Failure {
  CacheFailure(String message) : super(message);
}