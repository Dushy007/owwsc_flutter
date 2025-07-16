import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:owwsc_mock_responsive/bloc/home/home_event.dart';
import 'package:owwsc_mock_responsive/bloc/home/home_state.dart';
import 'package:owwsc_mock_responsive/data/datasources/local/local_storage_helper.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeInitial()) {
    on<LoadUserDetailsEvent>(_onLoadUserDetails);
  }

  Future<void> _onLoadUserDetails(LoadUserDetailsEvent event,
      Emitter<HomeState> emit,) async {
      emit(HomeLoading());
      try {
        // Add 2 second delay to showcase shimmer effect
        await Future.delayed(const Duration(seconds: 2));
        final String? username = await LocalStorageHelper.get<String>('username');
        emit(HomeLoaded(username: username));
      } catch(e) {
        emit(HomeError('Failed to load user details: $e'));
      }
  }
}