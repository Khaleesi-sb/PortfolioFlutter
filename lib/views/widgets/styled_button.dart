import 'package:flutter/material.dart';
import 'package:my_portfolio/helper/extensions/context_extensions.dart';
import 'package:my_portfolio/styles/app_colors.dart';

import 'app_bar/seo_text.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    super.key,
    required this.onPressed,
    required this.title,
  });

  final String title;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: context.colorScheme.primary
      ),
      child: Text(
        title,
        style: TextStyle(
          color: AppColors.gray[100],
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}

class OutlineButton extends StatelessWidget {
  const OutlineButton({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {},
      style: OutlinedButton.styleFrom(
        side: BorderSide(color: context.colorScheme.primary,),
      ),
      child: SEOText(
        text: title,
        textStyle: TextStyle(
          color: context.colorScheme.primary,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
