import 'package:flutter/material.dart';
import 'package:seo_renderer/renderers/text_renderer/text_renderer_style.dart';

import '../../helper/extensions/context_extensions.dart';
import 'app_bar/seo_text.dart';

class HomeTitleSubtitle extends StatelessWidget {
  const HomeTitleSubtitle({
    super.key,
    required this.title,
    this.subtitle,
    this.hasSubTitle = true,
  });

  final String title;
  final String? subtitle;
  final bool hasSubTitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsGeometry.symmetric(horizontal: context.insets.padding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SEOText(
            text: title,
            textStyle: context.textStyles.titleSmBold.copyWith(
              color: context.colorScheme.onBackground,
            ),
            textRendererStyle: TextRendererStyle.header3,
          ),
          if (hasSubTitle)
            SEOText(
              text: subtitle ?? "",
              textStyle: context.textStyles.bodyMdMedium.copyWith(
                color: context.colorScheme.onBackground,
              ),
              textRendererStyle: TextRendererStyle.header4,
            ),
        ],
      ),
    );
  }
}
