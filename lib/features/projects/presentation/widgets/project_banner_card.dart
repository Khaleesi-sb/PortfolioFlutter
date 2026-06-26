import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../helper/extensions/context_extensions.dart';
import '../../../../styles/app_size.dart';
import '../../../../views/widgets/styled_button.dart';
import '../../../../views/widgets/styled_card.dart';

class ProjectBannerCard extends StatelessWidget {
  const ProjectBannerCard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.buttonText,
    required this.onTap,
  });

  final String title;
  final String subtitle;
  final String buttonText;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return StyledCard(
      borderEffect: true,
      height: 150,
      width: Insets.maxWidth,
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Row(
              children: [
                _RocketIllustration(),
                Gap(Insets.lg),
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: context.textStyles.titleMdMedium.copyWith(
                          color: context.colorScheme.onBackground,
                        ),
                      ),
                      const Gap(8),
                      Text(
                        subtitle,
                        style: context.textStyles.bodyMdMedium.copyWith(
                          color: context.colorScheme.onSurfaceVariant,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Gap(Insets.xl),
          PrimaryButton(
            title: buttonText,
            onPressed: onTap,
          ),
        ],
      ),
    );
  }
}

class _RocketIllustration extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 96,
      height: 96,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        gradient: RadialGradient(
          colors: [
            context.colorScheme.primary.withOpacity(.25),
            Colors.transparent,
          ],
        ),
      ),
      child: Icon(
        Icons.rocket_launch_rounded,
        size: 48,
        color: context.colorScheme.primary,
      ),
    );
  }
}