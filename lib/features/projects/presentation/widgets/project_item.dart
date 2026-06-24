import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:seo_renderer/renderers/text_renderer/text_renderer_style.dart';

import '../../../../helper/extensions/context_extensions.dart';
import '../../../../views/widgets/app_bar/seo_text.dart';
import '../../../../views/widgets/styled_card.dart';

class ProjectItem extends StatelessWidget {
  const ProjectItem({super.key});

  @override
  Widget build(BuildContext context) {
    return StyledCard(
      child: AspectRatio(
        aspectRatio: 0.7,
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: 1.5,
              child: ClipRRect(
                child: Image.network(
                  "https://img.magnific.com/free-photo/document-marketing-strategy-business-concept_53876-132231.jpg?semt=ais_hybrid&w=740&q=80",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Gap(24),
            SEOText(
              text: "Random Text",
              textStyle: context.textStyles.bodyLgBold.copyWith(
                color: context.colorScheme.onBackground,
              ),
              textRendererStyle: TextRendererStyle.header4,
            ),
            Gap(8),
            Expanded(
              child: SEOText(
                text: "Some hggfghhnmnjm ",
                textStyle: context.textStyles.bodyMdMedium.copyWith(
                  color: context.colorScheme.onSurface,
                ),
                textRendererStyle: TextRendererStyle.header4,
                maxLines: 4,
                textOverflow: TextOverflow.ellipsis,
              ),
            ),

          ],
        ),
      ),
    );
  }
}
