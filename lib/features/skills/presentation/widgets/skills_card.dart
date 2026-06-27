import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:my_portfolio/features/skills/presentation/widgets/skill_tag.dart';

import '../../../../helper/extensions/context_extensions.dart';
import '../../../../styles/app_colors.dart';
import '../../../../views/widgets/styled_card.dart';
import '../../Models/skills_model.dart';

class SkillsCard extends StatelessWidget {
  const SkillsCard({super.key, required this.cardContent});

  final Skills cardContent;

  @override
  Widget build(BuildContext context) {
    return StyledCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                width: 3,
                height: 16,
                decoration: BoxDecoration(
                  color: context.colorScheme.primary,
                  borderRadius: BorderRadius.circular(2),
                ),
              ),
              const Gap(8),
              Text(
                cardContent.label,
                style: context.textStyles.bodyMdMedium.copyWith(
                  color: context.colorScheme.onBackground,
                ),
              ),
            ],
          ),
          const Gap(16),
          Wrap(
            spacing: 8,
            runSpacing: 8,
            children: [
              for (final skill in cardContent.skill)
                SkillTag(label: skill)
            ],
          ),
        ],
      ),
    );
  }
}
