import 'package:equatable/equatable.dart';

abstract class OnboardingEvent extends Equatable {
  const OnboardingEvent();

  @override
  List<Object> get props => [];
}

class OnboardingStarted extends OnboardingEvent {}

class OnboardingNextPressed extends OnboardingEvent {}

class OnboardingSkipped extends OnboardingEvent {}

class OnboardingPageChanged extends OnboardingEvent {
  final int pageIndex;

  const OnboardingPageChanged({required this.pageIndex});

  @override
  List<Object> get props => [pageIndex];
}

class OnboardingCompleted extends OnboardingEvent {}
