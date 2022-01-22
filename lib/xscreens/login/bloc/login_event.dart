part of 'login_bloc.dart';

abstract class LoginEvent extends Equatable {
  const LoginEvent();

  @override
  List<Object> get props => [];
}

class UserCreateEvent extends LoginEvent {
  final String username;
  final String password;

  UserCreateEvent(this.username, this.password);
}
