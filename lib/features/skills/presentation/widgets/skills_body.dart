import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:gap/gap.dart';
import 'package:my_portfolio/features/skills/Models/skills_model.dart';
import 'package:my_portfolio/features/skills/presentation/widgets/skills_card.dart';

import '../../../../helper/extensions/context_extensions.dart';
import '../../../../styles/app_colors.dart';
import '../../../../views/widgets/styled_card.dart';
import 'section_badge.dart';
import 'skill_tag.dart';

class SkillsBody extends StatelessWidget {
  const SkillsBody({super.key, required this.skills});

  final List<SkillsModel> skills;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        for (final skill in skills)
          context.isDesktopOrTablet
              ? _DesktopSkillItem(
                  sectionName: skill.sectionName,
                  cardContent: skill.skills,
                )
              : _MobileSkillItem(
                  sectionName: skill.sectionName,
                  cardContent: skill.skills,
                ),
      ],
    );
  }
}

class _DesktopSkillItem extends StatelessWidget {
  const _DesktopSkillItem({
    required this.sectionName,
    required this.cardContent,
  });

  final String sectionName;
  final List<Skills> cardContent;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SectionBadge(label: sectionName),
        const Gap(16),
        Center(
          child: MasonryGridView.count(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: cardContent.length,
            crossAxisCount: context.isDesktop
                ? (cardContent.length >= 3 ? 3 : cardContent.length)
                : (cardContent.length >= 2 ? 2 : cardContent.length),
            crossAxisSpacing: 16,
            mainAxisSpacing: 16,
            itemBuilder: (context, index) {
              return SkillsCard(cardContent: cardContent[index]);
            },
          ),
        ),
        const Gap(16),
        // const Divider(height: 24),
      ],
    );
  }
}

class _MobileSkillItem extends StatelessWidget {
  const _MobileSkillItem({
    required this.sectionName,
    required this.cardContent,
  });

  final String sectionName;
  final List<Skills> cardContent;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SectionBadge(label: sectionName),
        const Gap(16),
        ...List.generate(cardContent.length, (index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 16),
            child: SkillsCard(cardContent: cardContent[index]),
          );
        }),
        const Gap(16),
      ],
    );
  }
}
