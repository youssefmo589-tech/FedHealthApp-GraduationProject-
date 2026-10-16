import 'package:flutter/material.dart';

import '../AppRoutes/AppRoutesName.dart';
import '../Features/splashScreen/SplashScreen.dart';

abstract class AppConfig {
  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRouteName.splashScreen:
        return MaterialPageRoute(builder: ((context) => SplashScreen()));
    }
  }
}
