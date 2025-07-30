import 'package:equatable/equatable.dart';
import 'package:owwsc_mock_responsive/data/models/home/menu_data/menu_data_response_model.dart';

abstract class HomeState extends Equatable{
  const HomeState();
}

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
  final List<MenuItem>? menuDataResponse;

  const HomeLoaded({this.username, this.menuDataResponse});

  @override
  List<Object?> get props => [username, menuDataResponse];
}

class HomeError extends HomeState {
  final String message;

  HomeError(this.message);

  @override
  List<Object?> get props => [message];
}