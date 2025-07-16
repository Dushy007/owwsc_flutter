import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:owwsc_mock_responsive/bloc/appdrawer/appdrawer_bloc.dart';
import 'package:owwsc_mock_responsive/bloc/appdrawer/appdrawer_event.dart';
import 'package:owwsc_mock_responsive/bloc/auth/auth_bloc.dart';
import 'package:owwsc_mock_responsive/bloc/home/home_bloc.dart';
import 'package:owwsc_mock_responsive/bloc/home/home_event.dart';
import 'package:owwsc_mock_responsive/core/navigation/app_router.dart';

import 'bloc/onboarding/onboarding_bloc.dart';
import 'core/responsive/responsive_utils.dart';
import 'core/theme/app_theme.dart';

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
        BlocProvider<OnboardingBloc>(create: (context) => OnboardingBloc()),
        BlocProvider<HomeBloc>(create: (context) => HomeBloc()..add(LoadUserDetailsEvent())),
        BlocProvider(create: (context) => AppDrawerBloc()..add(FetchAppDrawerDetails())),
      ],
      child: MaterialApp.router(
        title: 'Flutter Demo',
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
    );
  }
}
