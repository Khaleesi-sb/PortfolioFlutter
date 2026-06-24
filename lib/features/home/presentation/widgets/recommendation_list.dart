import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:gap/gap.dart';

import '../../../../helper/extensions/context_extensions.dart';
import '../../../../views/widgets/home_title_subtitle.dart';
import '../../../recommendations/presentation/widgets/recommendation_item.dart';

class RecommendationList extends StatelessWidget {
  const RecommendationList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        HomeTitleSubtitle(
          title: context.texts.recommendation,
          subtitle: context.texts.recommendationDesc,
        ),
        const Gap(32),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: context.insets.padding),
          child: context.isDesktopOrTablet
              ? const _DesktopRecommendation()
              : const _MobileRecommendation(),
        ),
      ],
    );
  }
}

class _DesktopRecommendation extends StatelessWidget {
  const _DesktopRecommendation({super.key});

  @override
  Widget build(BuildContext context) {
    return MasonryGridView.count(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 10,
      crossAxisCount: context.isDesktop ? 3 : 2,
      crossAxisSpacing: 16,
      mainAxisSpacing: 16,
      itemBuilder: (context, index) {
        return const RecommendationItem();
      },
    );
  }
}

class _MobileRecommendation extends StatelessWidget {
  const _MobileRecommendation({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(5, (index) {
        return const Padding(
          padding: EdgeInsets.only(bottom: 16),
          child: RecommendationItem(),
        );
      }),
    );
  }
}
