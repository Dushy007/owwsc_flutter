import 'package:equatable/equatable.dart';

abstract class HomeState extends Equatable{}

class HomeInitial extends HomeState {
  @override
  List<Object?> get props => [];
}

class HomeLoading extends HomeState {
  @override
  List<Object?> get props => [];
}

class HomeLoaded extends HomeState {
  final String? username;

  HomeLoaded({this.username});

  @override
  List<Object?> get props => [username];
}

class HomeError extends HomeState {
  final String message;

  HomeError(this.message);

  @override
  List<Object?> get props => [message];
}