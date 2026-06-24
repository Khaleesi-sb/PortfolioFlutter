import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../helper/extensions/context_extensions.dart';
import '../../../../views/widgets/home_title_subtitle.dart';
import '../../../projects/presentation/widgets/project_item.dart';

class HomeProjectList extends StatelessWidget {
  const HomeProjectList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        HomeTitleSubtitle(
          title: context.texts.projects,
          subtitle: context.texts.projectsDesc,
        ),
        Gap(32),
        context.isDesktop
            ? _HomeProjectListDesktop()
            : _HomeProjectListMobile(),
      ],
    );
  }
}

class _HomeProjectListDesktop extends StatelessWidget {
  const _HomeProjectListDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: context.insets.padding),
      child: Row(
        children: [
          Expanded(child: ProjectItem()),
          Gap(16),
          Expanded(child: ProjectItem()),
          Gap(16),
          Expanded(child: ProjectItem()),
        ],
      ),
    );
  }
}

class _HomeProjectListMobile extends StatelessWidget {
  const _HomeProjectListMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            SizedBox(
              width: 240,
              child: ProjectItem(),
            ),
            Gap(16),
            SizedBox(
              width: 240,
              child: ProjectItem(),
            ),
            Gap(16),
            SizedBox(
              width: 240,
              child: ProjectItem(),
            ),
          ],
        ),
      ),
    );
  }
}
