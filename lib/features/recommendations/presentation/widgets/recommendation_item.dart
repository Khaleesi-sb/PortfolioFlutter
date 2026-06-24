import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../helper/extensions/context_extensions.dart';
import '../../../../views/widgets/styled_card.dart';

class RecommendationItem extends StatelessWidget {
  const RecommendationItem({super.key});

  @override
  Widget build(BuildContext context) {
    return StyledCard(
      child: Column(
        children: [
          Row(
            children: [
              SizedBox(
                width: 40,
                height: 40,
                child: CircleAvatar(
                  backgroundImage: Image.network("src").image,
                ),
              ),
              Gap(16),
              Expanded(
                child: Text(
                  "Name",
                  style: context.textStyles.bodyLgBold.copyWith(
                    color: context.colorScheme.onBackground,
                  ),
                ),
              ),
            ],
          ),
          Gap(16),
          Text(
            "Description",
            style: context.textStyles.bodyMdMedium.copyWith(
              color: context.colorScheme.onBackground,
            ),
          ),
        ],
      ),
    );
  }
}
