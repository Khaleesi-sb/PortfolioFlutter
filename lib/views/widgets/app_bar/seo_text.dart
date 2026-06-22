import 'package:flutter/material.dart';

class SEOText extends StatelessWidget {
  const SEOText({super.key, required this.text, this.textStyle});

  final String text;
  final TextStyle? textStyle;

  @override
  Widget build(BuildContext context) {
    return Text(text);
  }
}
