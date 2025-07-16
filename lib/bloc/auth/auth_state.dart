import 'package:equatable/equatable.dart';
import 'package:owwsc_mock_responsive/data/models/login/login_response_model.dart';

abstract class AuthState extends Equatable {
  const AuthState();

  @override
  List<Object> get props => [];
}

class AuthInitial extends AuthState {}

class AuthLoading extends AuthState {}

class AuthAuthenticated extends AuthState {
   final UserData userData;

  const AuthAuthenticated(this.userData);

  @override
  List<Object> get props => [userData];
}

class AuthUnauthenticated extends AuthState {}

class AuthError extends AuthState {
  final String message;

  const AuthError({required this.message});

  @override
  List<Object> get props => [message];
}
