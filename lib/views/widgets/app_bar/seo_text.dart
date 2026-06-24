import 'package:flutter/material.dart';
import 'package:seo_renderer/renderers/text_renderer/text_renderer_style.dart';

class SEOText extends StatelessWidget {
  const SEOText({
    super.key,
    required this.text,
    this.textRendererStyle,
    this.textStyle,
    this.textAlign,
    this.maxLines,
    this.textOverflow,
  });

  final String text;
  final TextStyle? textStyle;
  final TextAlign? textAlign;
  final TextRendererStyle? textRendererStyle;
  final int? maxLines;
  final TextOverflow? textOverflow;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: textStyle,
      maxLines: maxLines,
      overflow: textOverflow,
    );
  }
}
