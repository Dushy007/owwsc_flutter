import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:owwsc_mock_responsive/core/widgets/bottom_navigation_bar_scaffold.dart';
import 'package:owwsc_mock_responsive/presentation/screens/dashboard/dashboard_screen.dart';
import 'package:owwsc_mock_responsive/presentation/screens/home/home_screen.dart';
import 'package:owwsc_mock_responsive/presentation/screens/my_requests/my_requests_screen.dart';
import 'package:owwsc_mock_responsive/presentation/screens/onboarding/onboarding_screen.dart';
import 'package:owwsc_mock_responsive/presentation/screens/services/services_screen.dart';
import 'package:owwsc_mock_responsive/presentation/screens/splash/splash_screen.dart';

import '../../presentation/screens/auth/login_screen.dart';
import '../constants/route_constants.dart';

class AppRouter {
  static final _rootNavigatorKey = GlobalKey<NavigatorState>();
  static final _shellNavigatorKey = GlobalKey<NavigatorState>();

  static final GoRouter router = GoRouter(
    navigatorKey: _rootNavigatorKey,
    initialLocation: RouteConstants.login,
    debugLogDiagnostics: true,
    routes: [
      // Splash Screen (No Shell)
      GoRoute(
        path: RouteConstants.splash,
        name: RouteConstants.splashName,
        builder: (context, state) => const SplashScreen(),
      ),
      // Onboarding screen
      GoRoute(
        path: RouteConstants.onboarding,
        name: RouteConstants.onboardingName,
        builder: (context, state) => const OnboardingScreen(),
      ),

      // Auth Routes (No Shell)
      GoRoute(
        path: RouteConstants.login,
        name: RouteConstants.loginName,
        builder: (context, state) => const LoginScreen(),
      ),
      // Main App Routes (With Shell/Layout)
      ShellRoute(
        navigatorKey: _shellNavigatorKey,
        builder: (context, state, child) {
          return BottomNavigationBarScaffold(child: child,);
        },
        routes: [
          GoRoute(
            path: RouteConstants.home,
            parentNavigatorKey: _shellNavigatorKey,
            name: RouteConstants.homeName,
            builder: (context, state) => const HomeScreen(),
          ),
          GoRoute(
            path: RouteConstants.dashboard,
            parentNavigatorKey: _shellNavigatorKey,
            name: RouteConstants.dashboardName,
            builder: (context, state) => const DashboardScreen(),
          ),
          GoRoute(
            path: RouteConstants.myRequests,
            parentNavigatorKey: _shellNavigatorKey,
            name: RouteConstants.myRequestsName,
            builder: (context, state) => const MyRequestsScreen(),
          ),
          GoRoute(
            path: RouteConstants.services,
            parentNavigatorKey: _shellNavigatorKey,
            name: RouteConstants.servicesName,
            builder: (context, state) => const ServicesScreen(),
          ),
          // GoRoute(
          //   path: RouteConstants.profile,
          //   name: RouteConstants.profileName,
          //   builder: (context, state) => const ProfileScreen(),
          //   routes: [
          //     GoRoute(
          //       path: 'edit',
          //       name: RouteConstants.editProfileName,
          //       builder: (context, state) => const EditProfileScreen(),
          //     ),
          //   ],
          // ),
          // GoRoute(
          //   path: RouteConstants.settings,
          //   name: RouteConstants.settingsName,
          //   builder: (context, state) => const SettingsScreen(),
          //   routes: [
          //     GoRoute(
          //       path: 'theme',
          //       name: RouteConstants.themeSettingsName,
          //       builder: (context, state) => const ThemeSettingsScreen(),
          //     ),
          //   ],
          // ),
        ],
      ),
    ],
    // errorBuilder: (context, state) => ErrorScreen(error: state.error),
    // redirect: (context, state) {
    //   // Add authentication logic here
    //   final isLoggedIn = true; // Replace with actual auth check
    //   final isOnAuthRoute =
    //       state.matchedLocation.startsWith('/auth') ||
    //       state.matchedLocation == RouteConstants.login ||
    //       state.matchedLocation == RouteConstants.register;
    //   final isOnSplash = state.matchedLocation == RouteConstants.splash;
    //
    //   // If not logged in and not on auth or splash routes, redirect to login
    //   if (!isLoggedIn && !isOnAuthRoute && !isOnSplash) {
    //     return RouteConstants.login;
    //   }
    //
    //   // If logged in and on auth routes, redirect to home
    //   if (isLoggedIn && isOnAuthRoute) {
    //     return RouteConstants.home;
    //   }
    //
    //   return null; // No redirect needed
    // },
  );

  // Navigation helper methods
  static void goToHome() {
    router.goNamed(RouteConstants.homeName);
  }

  static void goToDashboard() {
    router.goNamed(RouteConstants.dashboardName);
  }

  static void goToMyRequests() {
    router.goNamed(RouteConstants.myRequestsName);
  }

  static void goToServices() {
    router.goNamed(RouteConstants.servicesName);
  }

  static void goToProfile() {
    router.goNamed(RouteConstants.profileName);
  }

  static void goToSettings() {
    router.goNamed(RouteConstants.settingsName);
  }

  static void goToLogin() {
    router.goNamed(RouteConstants.loginName);
  }

  static void goToRegister() {
    router.goNamed(RouteConstants.registerName);
  }

  static void goBack() {
    router.pop();
  }

  // static void pushNamed(String name, {Map<String, String>? pathParameters}) {
  //   router.pushNamed(name, pathParameters: pathParameters);
  // }
  //
  // static void pushReplacementNamed(String name, {Map<String, String>? pathParameters}) {
  //   router.pushReplacementNamed(name, pathParameters: pathParameters);
  // }
}

// Error Screen Widget
// class ErrorScreen extends StatelessWidget {
//   final Exception? error;
//
//   const ErrorScreen({Key? key, this.error}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Error'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//           const Icon(
//           Icons.error_outline,
//           size: 64,
//           color: Colors.red,
//         ),
//         const SizedBox(height: 16),
//         const Text(
//           'Oops! Something went wrong',
//           style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//         ),
//         const SizedBox(height: 8),
//         Text(
//           error?.toString() ?? 'Unknown error occurred',
//           textAlign: TextAlign.center,
//           style: const TextStyle(fontSize: 16),
//         ),
//         const SizedBox(height: 24),
//         ElevatedButton(
//           onPressed: () => AppRouter.goToHome(),
//           child: const Text('Go Home'),
//           SizedBox(height: ResponsiveUtils.getResponsiveSpacing(context, AppConstants.spacingXL)),
//
//           _buildDeviceInfo(context),
//           ],
//         ),
//       ),
//     );
//   }
// }
