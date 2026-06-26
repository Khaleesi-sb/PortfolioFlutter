import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:my_portfolio/views/widgets/app_scaffold.dart';

import '../../../../helper/extensions/context_extensions.dart';
import '../../../../styles/app_size.dart';
import '../../../../views/widgets/background_blur.dart';
import '../../../../views/widgets/home_title_subtitle.dart';
import '../../Models/skills_model.dart';
import '../widgets/skills_body.dart';

class SkillsPage extends StatelessWidget {
  const SkillsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final skills = [
      SkillsModel(
        sectionName: context.texts.frontend,
        skills: [
          Skills(
            skill: [
              context.texts.dart,
              context.texts.kotlin,
              context.texts.java,
            ],
            label: context.texts.programmingLanguage,
          ),
          Skills(
            skill: [
              context.texts.flutter,
              context.texts.bloc,
              context.texts.cubit,
              context.texts.figma,
              context.texts.devtool,
              context.texts.inspector,
              context.texts.platformChannel,
            ],
            label: context.texts.frameworks,
          ),
          Skills(
            skill: [
              context.texts.mvvm,
              context.texts.mvc,
              context.texts.cleanArchitecture,
              context.texts.solid,
            ],
            label: context.texts.architecture,
          ),
          Skills(
            skill: [
              context.texts.responsive,
              context.texts.stateManagement,
              context.texts.performanceOptimise,
              context.texts.tdd,
            ],
            label: context.texts.ui,
          ),
        ],
      ),
      SkillsModel(
        sectionName: context.texts.backend,
        skills: [
          Skills(
            skill: [
              context.texts.firebase,
              context.texts.hive,
              context.texts.sqlite,
              context.texts.mySql,
            ],
            label: context.texts.database,
          ),
          Skills(
            skill: [
              context.texts.api,
              context.texts.payment,
              context.texts.di,
              context.texts.postman,
              context.texts.git,
            ],
            label: context.texts.integration,
          ),
        ],
      ),
      SkillsModel(
        sectionName: context.texts.ai,
        skills: [
          Skills(
            skill: [
              context.texts.openAi,
              context.texts.claude,
              context.texts.gemini,
              context.texts.chatbot,
              context.texts.prompt,
            ],
            label: context.texts.aiTools,
          ),
        ],
      ),
    ];
    return AppScaffold(
      slivers: [
        SliverGap(context.insets.appBarHeight),
        // SliverToBoxAdapter(
        //   child: Align(
        //     alignment: Alignment.centerLeft,
        //     child: Container(
        //       padding: EdgeInsets.symmetric(horizontal: context.insets.padding),
        //         constraints: const BoxConstraints(maxWidth: Insets.maxWidth),
        //         child: HomeTitleSubtitle(
        //           title: context.texts.skills,
        //           hasSubTitle: false,
        //           // subtitle: context.texts.skillsDesc,
        //         ),
        //       ),
        //   ),
        // ),
        // const SliverGap(32),
        SliverToBoxAdapter(
          child: Center(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: context.insets.padding),
              constraints: const BoxConstraints(maxWidth: Insets.maxWidth),
              child: SkillsBody(skills: skills),
            ),
          ),
        ),
      ],
    );
  }
}
