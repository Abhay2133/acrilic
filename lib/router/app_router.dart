import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../pages/home/home_page.dart';
import '../pages/auth/login_page.dart';
import '../pages/auth/signup_page.dart';
import '../pages/app/app_page.dart';
import '../pages/error/not_found_page.dart';

class AppRouter {
  static Future<bool> isLoggedIn() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString("jwt_token") != null;
  }

  static final GoRouter router = GoRouter(
    initialLocation: '/',
    routes: [
      (GoRoute(path: '/', builder: (context, state) => const HomePage())),
      GoRoute(path: '/login', builder: (context, state) => const LoginPage()),
      GoRoute(path: '/signup', builder: (context, state) => const SignupPage()),

      GoRoute(path: '/app/home', builder: (context, state) => AppPage(0)),
      GoRoute(path: '/app/discover', builder: (context, state) => AppPage(1)),
      GoRoute(path: '/app/new', builder: (context, state) => AppPage(2)),
      GoRoute(path: '/app/index', builder: (context, state) => AppPage(3)),
      GoRoute(path: '/app/profile', builder: (context, state) => AppPage(4)),
    ],
    redirect: (context, state) async {
      final loggedIn = await isLoggedIn();
      // final isLoggingIn = state.matchedLocation == "/login" || state.matchedLocation == "/signup";

      // if (!loggedIn && !isLoggingIn) {
      //   return "/";
      // }
      if (loggedIn) {
        return "/app/home";
      }

      return null; // Stay on the same page
    },
    errorBuilder: (context, state) => const NotFoundPage(),
  );
}
