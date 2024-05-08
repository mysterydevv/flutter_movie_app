import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'screens/auth_screen.dart';
import 'screens/main_screen.dart';
import 'screens/root_screen.dart';


GoRouter router = GoRouter(initialLocation: '/', routes: [
  GoRoute(
    path: '/',
    builder: (context, state) => const NavScreen(),
  ),
  GoRoute(
    path: '/login',
    builder: (context, state) => const LoginScreen(),
    pageBuilder: defaultPageBuilder<LoginScreen>(const LoginScreen()),
  ),
  GoRoute(
    path: '/main',
    builder: (context, state) => ApiTestScreen(),
    pageBuilder: defaultPageBuilder<ApiTestScreen>(ApiTestScreen()),
  ),
  // GoRoute(
  //   path: '/search',
  //   builder: (context, state) => const SearchScreen(),
  //   pageBuilder: defaultPageBuilder<SearchScreen>(const SearchScreen()),
  // ),
  // GoRoute(
  //   path: '/profile',
  //   builder: (context, state) => const ProfileScreen(),
  //   pageBuilder: defaultPageBuilder<ProfileScreen>(const ProfileScreen()),
  // ),
  // GoRoute(
  //   path: '/movie/:id',
  //   builder: (context, state) => MovieScreen(state.pathParameters['id']!),
  // ),
  // GoRoute(
  //   path: '/tv/:id',
  //   builder: (context, state) => TVShowScreen(state.pathParameters['id']!),
  // )
]);

CustomTransitionPage buildPageWithDefaultTransition<T>({
  required BuildContext context,
  required GoRouterState state,
  required Widget child,
}) {
  return CustomTransitionPage<T>(
    key: state.pageKey,
    child: child,
    transitionsBuilder: (context, animation, secondaryAnimation, child) =>
        FadeTransition(opacity: animation, child: child),
  );
}

Page<dynamic> Function(BuildContext, GoRouterState) defaultPageBuilder<T>(
    Widget child) =>
        (BuildContext context, GoRouterState state) {
      return buildPageWithDefaultTransition<T>(
        context: context,
        state: state,
        child: child,
      );
    };