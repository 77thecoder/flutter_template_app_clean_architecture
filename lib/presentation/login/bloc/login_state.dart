part of 'login_bloc.dart';

abstract class LoginState extends Equatable {
  final String token;

  const LoginState({required this.token});

  @override
  List<Object> get props => [token];
}

class LoginInitialState extends LoginState {
  LoginInitialState() : super(token: '');
}

class LoginLoadingState extends LoginState {
  LoginLoadingState() : super(token: '');
}

class LoginLoggedState extends LoginState {
  final LoginModel login;
  LoginLoggedState({required this.login}) : super(token: login.token);
}