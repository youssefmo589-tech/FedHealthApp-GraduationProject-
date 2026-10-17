import 'package:fedhealth_graduationproject/Features/LayoutView/presentation/pages/Assessment/Assessment.dart';
import 'package:flutter/material.dart';

import '../../Features/LayoutView/presentation/pages/layoutView/LayoutView.dart';
import '../../Features/splashScreen/SplashScreen.dart';
import '../AppRoutes/AppRoutesName.dart';

abstract class AppConfig {
  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRouteName.splashScreen:
        return MaterialPageRoute(builder: ((context) => SplashScreen()));

      case AppRouteName.Assessment:
        return MaterialPageRoute(builder: ((context) => Assessment()));

      case AppRouteName.layoutView:
        return MaterialPageRoute(builder: ((context) => LayoutView()));
    }
  }
}
