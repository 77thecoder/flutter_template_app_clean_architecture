import 'package:amur/core/usecase/fetch_token.dart';
import 'package:amur/data/models/login_model.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'login_event.dart';

part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  late final FetchToken fetchToken;

  LoginBloc({required this.fetchToken}) : super(LoginInitialState());

  @override
  Stream<LoginState> mapEventToState(LoginEvent event) async* {
    if (event is LoginCheckStatusEvent) {
      final bool result = _LoginEvent.loginCheckStatus();
      var a = 1;
    }
  }
}

class _LoginEvent {
  static bool loginCheckStatus() {
    return true;
  }
}
