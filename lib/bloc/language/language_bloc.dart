import 'dart:ui';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:owwsc_mock_responsive/bloc/language/language_event.dart';
import 'package:owwsc_mock_responsive/bloc/language/language_state.dart';
import 'package:owwsc_mock_responsive/services/language_services.dart';

class LanguageBloc extends Bloc<LanguageEvent, LanguageState> {
  final LanguageService _languageService;

  LanguageBloc({required languageService}) : _languageService = languageService , super(const LanguageInitial()) {
    on<ChangeLanguageEvent>(_onChangeLanguage);
  }

  Future<void> _onChangeLanguage(
      ChangeLanguageEvent event,
      Emitter<LanguageState> emit,
      ) async {
    emit(LanguageLoading(state.locale));
    try {
      await _languageService.saveLanguageLocally(event.languageCode);

      final dbUpdateSuccess = await _languageService.updateLanguageInDatabase(event.languageCode);

      if(!dbUpdateSuccess) {
        // Log error but don't fail the language change
        print('Warning: Failed to update language in database');
      }

      final newLocale = Locale(event.languageCode);
      emit(LanguageLoaded(newLocale));
    } catch (e) {
      // Revert to previous locale on error
      emit(LanguageError(state.locale, e.toString()));
    }
  }
}