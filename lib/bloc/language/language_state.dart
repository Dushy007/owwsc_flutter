import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

abstract class LanguageState extends Equatable {
  final Locale locale;

  const LanguageState(this.locale);

  @override
  List<Object> get props => [locale];
}

class LanguageInitial extends LanguageState {
  const LanguageInitial() : super(const Locale('en'));
}

class LanguageLoading extends LanguageState {
  const LanguageLoading(Locale locale) : super(locale);
}

class LanguageLoaded extends LanguageState {
  const LanguageLoaded(Locale locale) : super(locale);
}

class LanguageError extends LanguageState {
  final String message;

  const LanguageError(Locale locale, this.message) : super(locale);

  @override
  List<Object> get props => [locale, message];
}