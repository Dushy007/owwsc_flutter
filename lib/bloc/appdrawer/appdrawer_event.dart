import 'package:equatable/equatable.dart';

abstract class AppDrawerEvent extends Equatable {}

class FetchAppDrawerDetails extends AppDrawerEvent {
  @override
  List<Object?> get props => [];
}