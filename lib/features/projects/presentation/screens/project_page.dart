import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:my_portfolio/features/projects/presentation/widgets/project_banner_card.dart';
import 'package:my_portfolio/features/projects/presentation/widgets/project_staggered_grid_view.dart';
import 'package:my_portfolio/views/widgets/app_scaffold.dart';

import '../../../../helper/extensions/context_extensions.dart';
import '../../../../routes/app_routes.dart';
import '../../../../styles/app_size.dart';
import '../../../../views/state/controllers/drawer_menu_controller.dart';

class ProjectPage extends StatelessWidget {
  const ProjectPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      slivers: [
        SliverToBoxAdapter(
          child: Center(
            child: Container(
              constraints: BoxConstraints(maxWidth: Insets.maxWidth),
              child: ProjectStaggeredGridView()
            ),
          ),
        ),
        SliverGap(context.insets.appBarHeight),
        SliverToBoxAdapter(
          child: Center(
            child: Container(
              constraints: BoxConstraints(maxWidth: Insets.maxWidth),
              child: ProjectBannerCard(
                title: 'Have a project in mind?',
                subtitle: "Let's build something amazing together.",
                buttonText: 'Get In Touch',
                onTap: () {
                  // ref.read(drawerMenuControllerProvider.notifier).close();
                  GoRouter.of(context).go(Routes.contact);
                },
              ),
            ),
          ),
        ),
      ],
    );
  }
}
