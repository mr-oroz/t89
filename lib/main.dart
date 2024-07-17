import 'package:flutter/material.dart';
import 'package:t89/app/app.dart';
import 'package:t89/core/di/injector.dart';
import 'package:t89/core/providers/providers.dart';

void main() async {
  configureDependencies();
  runApp(
    Providers(
      child: const App(),
    ),
  );
}
