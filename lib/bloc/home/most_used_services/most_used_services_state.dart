import 'package:equatable/equatable.dart';
import 'package:owwsc_mock_responsive/data/models/home/menu_data/menu_data_response_model.dart';

abstract class MostUsedServicesState extends Equatable {
  const MostUsedServicesState();
}

class MostUsedServicesInitial extends MostUsedServicesState {
  @override
  List<Object?> get props => [];
}

class MostUsedServicesLoading extends MostUsedServicesState {
  @override
  List<Object?> get props => [];
}

class MostUsedServicesLoaded extends MostUsedServicesState {
  final List<MenuItem> menuDataResponse;
  const MostUsedServicesLoaded(this.menuDataResponse);
  @override
  List<Object?> get props => [menuDataResponse];
}

class MostUsedServicesLoadFailure extends MostUsedServicesState {
  final String message;
  const MostUsedServicesLoadFailure(this.message);
  @override
  List<Object?> get props => [message];
}