import 'package:flutter/material.dart';

import '../../core/AppRoutes/AppRoutesName.dart';
import '../../core/gen/assets.gen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushNamed(context, AppRouteName.layoutView);
    });
  }

  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 15,
            children: [
              Assets.images.fedHealthMark.image(height: 100, width: 100),
              Text(
                "FedHealth - Federated Learning System",
                style: theme.titleLarge,
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
