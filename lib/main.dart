import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:owwsc_mock_responsive/bloc/appdrawer/appdrawer_bloc.dart';
import 'package:owwsc_mock_responsive/bloc/appdrawer/appdrawer_event.dart';
import 'package:owwsc_mock_responsive/bloc/auth/auth_bloc.dart';
import 'package:owwsc_mock_responsive/bloc/home/home_bloc.dart';
import 'package:owwsc_mock_responsive/bloc/home/home_event.dart';
import 'package:owwsc_mock_responsive/bloc/home/most_used_services/most_used_services_bloc.dart';
import 'package:owwsc_mock_responsive/bloc/language/language_bloc.dart';
import 'package:owwsc_mock_responsive/bloc/language/language_state.dart';
import 'package:owwsc_mock_responsive/core/navigation/app_router.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:owwsc_mock_responsive/services/language_services.dart';

import 'bloc/onboarding/onboarding_bloc.dart';
import 'core/responsive/responsive_utils.dart';
import 'core/theme/app_theme.dart';
import 'l10n/app_localizations.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AuthBloc>(create: (context) => AuthBloc()),
        BlocProvider<LanguageBloc>(create: (context) => LanguageBloc(languageService: LanguageService())),
        BlocProvider<OnboardingBloc>(create: (context) => OnboardingBloc()),
        BlocProvider<HomeBloc>(create: (context) => HomeBloc()..add(LoadUserDetailsEvent())),
        BlocProvider<MostUsedServicesBloc>(create: (context) => MostUsedServicesBloc()),
        BlocProvider(create: (context) => AppDrawerBloc()..add(FetchAppDrawerDetails())),
      ],
      child: BlocBuilder<LanguageBloc, LanguageState>(
        builder: (context, state) =>  MaterialApp.router(
          title: 'Flutter Demo',
          locale: state.locale,
          localizationsDelegates: [
            AppLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: [
            Locale('en'),
            Locale('ar'),
          ],
          theme: AppTheme.lightTheme,
          darkTheme: AppTheme.darkTheme,
          themeMode: ThemeMode.system,
          routerConfig: AppRouter.router,
          builder: (context, child) {
            return MediaQuery(
              data: MediaQuery.of(context).copyWith(
                textScaler: TextScaler.linear(
                  ResponsiveUtils.getTextScaleFactor(context),
                ),
              ),
              child: child!,
            );
          },
        ),
      ),
    );
  }
}
