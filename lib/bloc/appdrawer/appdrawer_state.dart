import 'package:equatable/equatable.dart';

abstract class AppDrawerState extends Equatable {}

class AppDrawerInitial extends AppDrawerState {
  @override
  List<Object?> get props => [];
}

class FetchingAppDrawerDetails extends AppDrawerState {
  @override
  List<Object?> get props => [];
}

class AppDrawerDetailsFetched extends AppDrawerState {
  final String username;
  AppDrawerDetailsFetched({required this.username});
  @override
  List<Object?> get props => [];
}

class AppDrawerDetailsFetchFailed extends AppDrawerState {
  final String message;
  AppDrawerDetailsFetchFailed(this.message);
  @override
  List<Object?> get props => [message];
}
