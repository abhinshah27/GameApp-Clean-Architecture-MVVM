import 'package:flutter/material.dart';
import 'package:game_app_architecture_mvvm/core/navigation/app_router.dart';
import 'package:game_app_architecture_mvvm/core/navigation/app_routes.dart';
import 'package:game_app_architecture_mvvm/core/theme/app_theme.dart';

class FlutterBestPracticesShowcaseApp extends StatelessWidget {
  const FlutterBestPracticesShowcaseApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: (context,child){
        return MediaQuery(
          data: MediaQuery.of(context).copyWith(textScaler: TextScaler.linear(1)),
          child: child!,
        );
      },
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.home,
      theme: AppThemes.lightTheme,
      darkTheme: AppThemes.darkTheme,
      themeMode: ThemeMode.system,
      onGenerateRoute: AppRouter.onGeneratedRoutes,
    );
  }
}