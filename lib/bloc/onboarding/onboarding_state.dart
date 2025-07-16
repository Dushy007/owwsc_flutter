import 'package:equatable/equatable.dart';

abstract class OnboardingState extends Equatable {
  const OnboardingState();

  @override
  List<Object> get props => [];
}

class OnboardingInitial extends OnboardingState {}

class OnboardingInProgress extends OnboardingState {
  final int currentPage;
  final int totalPages;

  const OnboardingInProgress({
    required this.currentPage,
    required this.totalPages,
  });

  bool get isLastPage => currentPage == totalPages - 1;
  bool get isFirstPage => currentPage == 0;

  @override
  List<Object> get props => [currentPage, totalPages];

  OnboardingInProgress copyWith({int? currentPage, int? totalPages}) {
    return OnboardingInProgress(
      currentPage: currentPage ?? this.currentPage,
      totalPages: totalPages ?? this.totalPages,
    );
  }
}

class OnboardingFinished extends OnboardingState {}

class OnboardingError extends OnboardingState {
  final String message;

  const OnboardingError({required this.message});

  @override
  List<Object> get props => [message];
}
