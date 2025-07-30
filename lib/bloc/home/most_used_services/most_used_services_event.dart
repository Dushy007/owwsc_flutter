import 'package:equatable/equatable.dart';

abstract class MostUsedServicesEvent extends Equatable {}

class LoadMostUsedServicesEvent extends MostUsedServicesEvent {
  String personType;
  String preferredLanguage;

  LoadMostUsedServicesEvent({required this.personType, required this.preferredLanguage});
  @override
  List<Object?> get props => [];
}