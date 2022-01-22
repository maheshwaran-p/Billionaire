part of 'login_bloc.dart';

abstract class LoginState extends Equatable {
  const LoginState();

  @override
  List<Object> get props => [];
}

class LoginInitial extends LoginState {}

class UserCreatedState extends LoginState {
  final String username;

  UserCreatedState(this.username);

  @override
  List<Object> get props => [username];
}
