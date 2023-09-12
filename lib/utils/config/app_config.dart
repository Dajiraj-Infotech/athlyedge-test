import 'package:flutter/material.dart';

class AppConfig {

  AppConfig._internal();

  static final AppConfig instance = AppConfig._internal();

  /// Application Name Configurations
  static const String _applicationName = 'Athlyedge';
  String get applicationName => _applicationName;

  /// Application Color Configurations
  static const Color _primaryColour = Color(0xFF0DC7B1);
  Color get primaryColour => _primaryColour;
}
