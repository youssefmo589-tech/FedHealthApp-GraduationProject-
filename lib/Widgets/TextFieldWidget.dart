import 'package:flutter/material.dart';

import '../core/Themes/AppColors.dart';

class TextFieldWidget extends StatelessWidget {
  final String title;

  final TextEditingController controller;

  const TextFieldWidget({
    super.key,
    required this.title,
    required this.controller,
  });

  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;

    return TextFormField(
      controller: controller,
      style: theme.titleMedium?.copyWith(
        color: AppColors.black,
        fontSize: 16,
        fontWeight: FontWeight.w500,
      ),
      cursorColor: AppColors.blue,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        hintText: title,
        hintStyle: theme.titleSmall?.copyWith(
          color: AppColors.darkgrey,
          fontSize: 14,
          fontWeight: FontWeight.w500,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: AppColors.lightgrey, width: 1),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: AppColors.lightgrey, width: 1),
        ),
      ),
    );
  }
}
