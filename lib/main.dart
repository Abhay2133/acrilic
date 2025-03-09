import 'package:acrillic/constants/theme.dart';
import 'package:flutter/material.dart';
import 'router/app_router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: AppTheme.fromString("dark").themeData,
      debugShowCheckedModeBanner: false,
      title: 'Acrilc',
      routerConfig:
          AppRouter.router, // Using GoRouter setup from app_router.dart
    );
  }
}
