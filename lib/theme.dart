import 'package:flutter/material.dart';

class AppTheme {
  // make factory constructor
  factory AppTheme() => _instance;

  // make private constructor
  AppTheme._internal();

  // make static instance
  static final AppTheme _instance = AppTheme._internal();

  ThemeData get themeData => ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: Colors.grey.shade400,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      );
}
