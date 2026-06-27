import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../../../../helper/extensions/context_extensions.dart';
import '../../../../views/widgets/styled_card.dart';
import '../../../skills/presentation/widgets/skill_tag.dart';

class ProjectStaggeredGridView extends StatelessWidget {
  const ProjectStaggeredGridView({super.key});

  @override
  Widget build(BuildContext context) {
    final projects = <Project>[
      const Project(
        title: 'Portfolio Website',
        description:
            'A responsive portfolio built with Flutter, featuring animations, dark mode, and reusable components.',
        skills: ['Flutter', 'Responsive UI', 'Animations'],
        featured: true,
        borderEffect: true,
        crossAxisCellCount: 2,
        mainAxisCellCount: 1.4,
      ),
      const Project(
        title: 'E-Commerce App',
        description:
            'Mobile shopping experience with cart, payments, product filtering, and backend integration.',
        skills: ['Flutter', 'Firebase', 'REST API'],
        crossAxisCellCount: 1,
        mainAxisCellCount: 1.2,
      ),
      const Project(
        title: 'Task Manager',
        description:
            'A clean productivity app with task grouping, reminders, and local persistence.',
        skills: ['Flutter', 'Hive', 'State Management'],
        crossAxisCellCount: 1,
        mainAxisCellCount: 1.1,
      ),
      const Project(
        title: 'Admin Dashboard',
        description:
            'Analytics-focused dashboard with charts, tables, role-based sections, and adaptive layout.',
        skills: ['Flutter Web', 'Charts', 'Dashboard UI'],
        featured: true,
        borderEffect: true,
        crossAxisCellCount: 2,
        mainAxisCellCount: 1.3,
      ),
    ];
    return MasonryGridView.count(
      crossAxisCount: context.isDesktop
          ? (projects.length >= 3 ? 3 : projects.length)
          : context.isTablet
          ? (projects.length >= 2 ? 2 : projects.length)
          : 1,
      mainAxisSpacing: 20,
      crossAxisSpacing: 20,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: projects.length,
      itemBuilder: (context, index) {
        final project = projects[index];
        return _ProjectCard(project: project);
      },
    );
  }
}

class _ProjectCard extends StatelessWidget {
  const _ProjectCard({required this.project});
  final Project project;
  @override
  Widget build(BuildContext context) {
    return StyledCard(
      // height: double.infinity,
      // borderEffect: project.borderEffect ?? false,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (project.featured ?? false)
            Container(
              margin: const EdgeInsets.only(bottom: 14),
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primary.withOpacity(0.12),
                borderRadius: BorderRadius.circular(999),
              ),
              child: Text(
                'Featured',
                style: TextStyle(
                  color: Theme.of(context).colorScheme.primary,
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          Text(
            project.title,
            style: Theme.of(
              context,
            ).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.w700),
          ),
          const SizedBox(height: 12),
          Text(project.description),
          const SizedBox(height: 18),
          Wrap(
            spacing: 8,
            runSpacing: 8,
            children: project.skills
                .map(
                  (skill) => SkillTag(
                    label: skill,
                    featured: project.featured ?? false,
                  ),
                )
                .toList(),
          ),
        ],
      ),
    );
  }
}

class Project {
  final String title;
  final String description;
  final List<String> skills;
  final bool? featured;
  final bool? borderEffect;
  final double crossAxisCellCount;
  final double mainAxisCellCount;

  const Project({
    required this.title,
    required this.description,
    required this.skills,
    this.featured,
    this.borderEffect,
    required this.crossAxisCellCount,
    required this.mainAxisCellCount,
  });
}
