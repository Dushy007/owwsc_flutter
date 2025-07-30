import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:owwsc_mock_responsive/bloc/home/most_used_services/most_used_services_event.dart';
import 'package:owwsc_mock_responsive/core/constants/api_constants.dart';
import 'package:owwsc_mock_responsive/data/datasources/remote/dio_client.dart';
import 'package:owwsc_mock_responsive/data/models/home/menu_data/menu_data_response_model.dart';

import 'most_used_services_state.dart';


class MostUsedServicesBloc extends Bloc<MostUsedServicesEvent, MostUsedServicesState> {
  final DioClient _client = DioClient();
  List<MenuItem>? _cachedServices;

  MostUsedServicesBloc() : super(MostUsedServicesInitial()) {
    on<LoadMostUsedServicesEvent>(_onLoadMostUsedServices);
  }

  Future<void> _onLoadMostUsedServices(LoadMostUsedServicesEvent event, Emitter<MostUsedServicesState> emit) async {
    if(_cachedServices != null) {
      emit(MostUsedServicesLoaded(_cachedServices!));
      return;
    }
    emit(MostUsedServicesLoading());
    try {
      Response response = await _client.post(ApiConstants.getMenuData, fields: {
        'lang': event.preferredLanguage,
        'customerType': event.personType
      });

      final jsonMap = jsonDecode(response.data) as Map<String, dynamic>;
      final menuDataResponse = MenuDataResponse.fromJson(jsonMap);
      if(menuDataResponse.statusCode == 605) {
        final services = menuDataResponse.getChildrenFor(1);
        _cachedServices = services;
        emit(MostUsedServicesLoaded(services));
      } else {
        emit(MostUsedServicesLoadFailure('Failed to load most used services'));
      }
    } catch(e) {
      emit(MostUsedServicesLoadFailure('Failed to load most used services: $e'));
    }
  }
}