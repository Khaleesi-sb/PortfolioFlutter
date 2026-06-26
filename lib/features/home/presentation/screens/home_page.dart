import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:my_portfolio/views/widgets/app_scaffold.dart';

import '../../../../helper/extensions/context_extensions.dart';
import '../../../../styles/app_size.dart';
import '../../../../views/widgets/app_bar/my_app_bar.dart';
import '../../../../views/widgets/background_blur.dart';
import '../../../../views/widgets/footer.dart';
import '../../../experience/presentation/widgets/experience_body.dart';
import '../widgets/hero_widget.dart';
import '../widgets/home_project_list.dart';
import '../widgets/recommendation_list.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(slivers: [
      SliverToBoxAdapter(
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: Insets.maxWidth),
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: context.insets.padding,
              ),
              child: const HeroWidget(),
            ),
          ),
        ),
      ),
      SliverGap(context.insets.gap),
      SliverToBoxAdapter(
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: Insets.maxWidth),
            child: const HomeProjectList(),
          ),
        ),
      ),
      SliverGap(context.insets.gap),
      SliverToBoxAdapter(
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: Insets.maxWidth),
            child: const ExperienceBody(),
          ),
        ),
      ),
      SliverGap(context.insets.gap),
      SliverToBoxAdapter(
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: Insets.maxWidth),
            child: const RecommendationList(),
          ),
        ),
      ),
      SliverGap(context.insets.gap),
    ]);
  }
}
