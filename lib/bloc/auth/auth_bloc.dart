import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:owwsc_mock_responsive/data/datasources/local/local_storage_helper.dart';
import 'package:owwsc_mock_responsive/data/datasources/remote/dio_client.dart';
import 'package:owwsc_mock_responsive/data/models/login/login_response_model.dart';

import 'auth_event.dart';
import 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final DioClient _client = DioClient();

  AuthBloc() : super(AuthInitial()) {
    // on<AuthCheckRequested>(_onAuthCheckRequested);
    on<AuthLoginRequested>(_onAuthLoginRequested);
    on<AuthRegisterRequested>(_onAuthRegisterRequested);
    on<AuthLogoutRequested>(_onAuthLogoutRequested);
    on<AuthSocialLoginRequested>(_onAuthSocialLoginRequested);
  }

  // Future<void> _onAuthCheckRequested(
  //   AuthCheckRequested event,
  //   Emitter<AuthState> emit,
  // ) async {
  //   emit(AuthLoading());
  //
  //   // Simulate checking stored auth token
  //   await Future.delayed(const Duration(seconds: 1));
  //
  //   // TODO: Replace with actual auth check
  //   final isAuthenticated = false; // Check stored token/session
  //
  //   if (isAuthenticated) {
  //     emit(
  //       const AuthAuthenticated(
  //         userId: '1',
  //         email: 'user@example.com',
  //         name: 'John Doe',
  //       ),
  //     );
  //   } else {
  //     emit(AuthUnauthenticated());
  //   }
  // }

  Future<void> _onAuthLoginRequested(
    AuthLoginRequested event,
    Emitter<AuthState> emit,
  ) async {
    emit(AuthLoading());
    try {
        Response response =  await _client.post('/UserActionWeb/ValidateLoginUser',fields: {
          'loginName': event.email,
          'password': event.password,
          'language': 'EN'
        });

        final jsonMap = jsonDecode(response.data) as Map<String, dynamic>;
        final userResponse = LoginResponse.fromJson(jsonMap);

        if(userResponse.data != null) {
          if(userResponse.statusCode == 605 && userResponse.data!.userId == 0) {
            final message = userResponse.data!.outMessage;
            emit(AuthError(message: message));
          } else {
            await LocalStorageHelper.set('token', userResponse.data!.token);
            await LocalStorageHelper.set('username', userResponse.data!.userName);
            await LocalStorageHelper.set('email', userResponse.data!.emailId);
            await LocalStorageHelper.set('person_type', userResponse.data!.personType);
            await LocalStorageHelper.set('pref_lang', userResponse.data!.preferredLang);
            emit(AuthAuthenticated(userResponse.data!));
          }
        } else {
          emit(const AuthError(message: 'Something went wrong. Please try again.'));
        }
    } catch (e) {
      emit(AuthError(message: e.toString()));
    }
  }

  Future<void> _onAuthRegisterRequested(
    AuthRegisterRequested event,
    Emitter<AuthState> emit,
  ) async {
    emit(AuthLoading());

    try {
      // Simulate API call
      await Future.delayed(const Duration(seconds: 2));

      // TODO: Replace with actual registration logic
      if (event.email.isNotEmpty &&
          event.password.isNotEmpty &&
          event.name.isNotEmpty) {
        // emit(
        //   AuthAuthenticated(userId: '1', email: event.email, name: event.name),
        // );
      } else {
        emit(const AuthError(message: 'Please fill all fields'));
      }
    } catch (e) {
      emit(AuthError(message: e.toString()));
    }
  }

  Future<void> _onAuthLogoutRequested(
    AuthLogoutRequested event,
    Emitter<AuthState> emit,
  ) async {
    emit(AuthLoading());

    // TODO: Clear stored auth data
    await Future.delayed(const Duration(seconds: 1));

    emit(AuthUnauthenticated());
  }

  Future<void> _onAuthSocialLoginRequested(
    AuthSocialLoginRequested event,
    Emitter<AuthState> emit,
  ) async {
    emit(AuthLoading());

    try {
      // Simulate social auth
      await Future.delayed(const Duration(seconds: 2));

      // TODO: Replace with actual social auth logic
      // emit(
        // const AuthAuthenticated(
        //   userId: '1',
        //   email: 'user@example.com',
        //   name: 'John Doe',
        // ),
      // );
    } catch (e) {
      emit(AuthError(message: e.toString()));
    }
  }
}
