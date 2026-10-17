import 'package:flutter/material.dart';

import '../core/Themes/AppColors.dart';
import '../core/gen/assets.gen.dart';

class ButtonWidget extends StatelessWidget {
  final String title;

  const ButtonWidget({super.key, required this.title});

  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;

    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.blue,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(17.5),

        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 10,
          children: [
            Text(
              title,
              style: theme.titleLarge?.copyWith(
                color: AppColors.white,
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
            ),
            Assets.icons.sparkles.svg(
              colorFilter: ColorFilter.mode(AppColors.white, BlendMode.srcIn),
            ),
          ],
        ),
      ),
    );
  }
}
