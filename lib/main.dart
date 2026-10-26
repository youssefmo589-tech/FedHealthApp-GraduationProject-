import 'package:flutter/material.dart';

import 'core/AppConfig/AppConfig.dart';
import 'core/AppRoutes/AppRoutesName.dart';
import 'core/DI/SettingDI.dart';
import 'core/Themes/AppThemeManager.dart';

void main() async {
  SettingDI();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: AppRouteName.splashScreen,
      onGenerateRoute: AppConfig.onGenerateRoute,
      theme: AppThemeManager.lighttheme,
    );
  }
}
