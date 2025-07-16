import 'package:flutter_bloc/flutter_bloc.dart';

import 'onboarding_event.dart';
import 'onboarding_state.dart';

class OnboardingBloc extends Bloc<OnboardingEvent, OnboardingState> {
  static const int _totalPages = 3; // Based on your onboarding data

  OnboardingBloc() : super(OnboardingInitial()) {
    on<OnboardingStarted>(_onOnboardingStarted);
    on<OnboardingNextPressed>(_onOnboardingNextPressed);
    on<OnboardingSkipped>(_onOnboardingSkipped);
    on<OnboardingPageChanged>(_onOnboardingPageChanged);
    on<OnboardingCompleted>(_onOnboardingCompleted);
  }

  void _onOnboardingStarted(
    OnboardingStarted event,
    Emitter<OnboardingState> emit,
  ) {
    emit(const OnboardingInProgress(currentPage: 0, totalPages: _totalPages));
  }

  void _onOnboardingNextPressed(
    OnboardingNextPressed event,
    Emitter<OnboardingState> emit,
  ) {
    if (state is OnboardingInProgress) {
      final currentState = state as OnboardingInProgress;

      if (currentState.isLastPage) {
        // Complete onboarding if on last page
        emit(OnboardingFinished());
      } else {
        // Move to next page
        emit(currentState.copyWith(currentPage: currentState.currentPage + 1));
      }
    }
  }

  void _onOnboardingSkipped(
    OnboardingSkipped event,
    Emitter<OnboardingState> emit,
  ) {
    emit(OnboardingFinished());
  }

  void _onOnboardingPageChanged(
    OnboardingPageChanged event,
    Emitter<OnboardingState> emit,
  ) {
    if (state is OnboardingInProgress) {
      final currentState = state as OnboardingInProgress;
      emit(currentState.copyWith(currentPage: event.pageIndex));
    }
  }

  void _onOnboardingCompleted(
    OnboardingCompleted event,
    Emitter<OnboardingState> emit,
  ) {
    emit(OnboardingFinished());
  }
}
