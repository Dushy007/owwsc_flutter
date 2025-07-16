import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:owwsc_mock_responsive/bloc/appdrawer/appdrawer_event.dart';
import 'package:owwsc_mock_responsive/bloc/appdrawer/appdrawer_state.dart';
import 'package:owwsc_mock_responsive/data/datasources/local/local_storage_helper.dart';

class AppDrawerBloc extends Bloc<AppDrawerEvent, AppDrawerState> {
  AppDrawerBloc() : super(AppDrawerInitial()) {
    on<FetchAppDrawerDetails>(_onFetchAppDrawerDetails);
  }

  Future<void> _onFetchAppDrawerDetails(AppDrawerEvent event, Emitter<AppDrawerState> emit) async {
    emit(FetchingAppDrawerDetails());
    try {
      final username = await LocalStorageHelper.get<String>('username');
      if(username != null) {
        emit(AppDrawerDetailsFetched(username: username));
      } else {
        emit(AppDrawerDetailsFetched(username : ''));
      }
    } catch(e) {
      emit(AppDrawerDetailsFetchFailed('Failed to fetch username'));
      debugPrint(e.toString());
    }
  }
}