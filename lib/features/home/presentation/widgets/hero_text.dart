import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:seo_renderer/renderers/text_renderer/text_renderer_style.dart';

import '../../../../helper/extensions/context_extensions.dart';
import '../../../../styles/app_size.dart';
import '../../../../views/widgets/app_bar/seo_text.dart';

class HeroText extends StatelessWidget {
  const HeroText({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: context.isDesktopOrTablet ?
      CrossAxisAlignment.start :
      CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        SEOText(text: context.texts.shilpa,
          textAlign: context.isDesktopOrTablet ? TextAlign.left : TextAlign.center,
          textStyle: context.textStyles.titleLgBold.copyWith(
            color: context.colorScheme.onSurface
          ),
          textRendererStyle: TextRendererStyle.header1,
        ),
        Gap(Insets.sm),
        SEOText(
        text: context.texts.developer,
          textAlign: context.isDesktopOrTablet ? TextAlign.left : TextAlign.center,
          textStyle: context.textStyles.titleMdMedium.copyWith(
            color: context.colorScheme.onSurface
          ),
          textRendererStyle: TextRendererStyle.header2,
        ),
        Gap(Insets.lg),
        SEOText(
          text: context.texts.developerDesc,
          textAlign: context.isDesktopOrTablet ? TextAlign.left : TextAlign.center,
          textStyle: context.textStyles.titleMdMedium.copyWith(
              color: context.colorScheme.onSurface
          ),
          textRendererStyle: TextRendererStyle.header3,
        ),
      ],
    );
  }
}
