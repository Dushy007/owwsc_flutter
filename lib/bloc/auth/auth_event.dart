import 'package:equatable/equatable.dart';

// Auth Events
abstract class AuthEvent extends Equatable {
  const AuthEvent();

  @override
  List<Object> get props => [];
}

class AuthCheckRequested extends AuthEvent {}

class AuthLoginRequested extends AuthEvent {
  final String email;
  final String password;
  final String languageCode;

  const AuthLoginRequested({required this.email, required this.password, required this.languageCode});

  @override
  List<Object> get props => [email, password, languageCode];
}

class AuthRegisterRequested extends AuthEvent {
  final String name;
  final String email;
  final String password;

  const AuthRegisterRequested({
    required this.name,
    required this.email,
    required this.password,
  });

  @override
  List<Object> get props => [name, email, password];
}

class AuthLogoutRequested extends AuthEvent {}

class AuthSocialLoginRequested extends AuthEvent {
  final String provider;

  const AuthSocialLoginRequested({required this.provider});

  @override
  List<Object> get props => [provider];
}
