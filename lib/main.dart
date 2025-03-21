import 'package:flutter/material.dart';
import 'package:game_app_architecture_mvvm/core/utils/local_database_helper.dart';
import 'core/di/app_module.dart';
import 'core/di/service_locator.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize local database
  await LocalDatabaseHelper.init();

  // Set up service locator for dependency injection.
  setupServiceLocator();

  runApp(const FlutterBestPracticesShowcaseApp());
}
