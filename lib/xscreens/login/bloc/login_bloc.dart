import 'dart:async';

import 'package:billionaire/app/locator.dart';
import 'package:billionaire/models/user_model.dart';
import 'package:billionaire/services/api_service.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(LoginInitial());

  @override
  void onEvent(LoginEvent event) {
    print(event);
    super.onEvent(event);
  }

  @override
  void onChange(Change<LoginState> change) {
    print(change);
    super.onChange(change);
  }

  final ApiService _apiService = locator<ApiService>();

  @override
  Stream<LoginState> mapEventToState(
    LoginEvent event,
  ) async* {
    if (event is UserCreateEvent) {
      print(event.password);
      print(event.username);
      Usermodel usermodel = await _apiService.createUser(
        event.username,
        event.password,
      );
      print(usermodel.toString());
      yield UserCreatedState(usermodel.username);
      yield UserCreatedState(usermodel.username);
    }
  }
}
