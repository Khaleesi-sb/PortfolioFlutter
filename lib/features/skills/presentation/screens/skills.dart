import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../helper/extensions/context_extensions.dart';
import '../../../../views/widgets/background_blur.dart';
import '../../../../views/widgets/home_title_subtitle.dart';
import '../../Models/skills_model.dart';
import '../widgets/skills_body.dart';

class SkillsPage extends StatelessWidget {
  const SkillsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final skills = [
        SkillsModel(sectionName: context.texts.frontend, skills: [
          Skills(skill: [context.texts.dart,
            context.texts.kotlin,
            context.texts.java
          ], label: context.texts.programmingLanguage),
          Skills(skill: [
            context.texts.flutter,
            context.texts.bloc,
            context.texts.cubit,
            context.texts.figma,
            context.texts.devtool,
            context.texts.inspector,
            context.texts.platformChannel
          ], label: context.texts.frameworks),
          Skills(skill: [
            context.texts.mvvm,
            context.texts.mvc,
            context.texts.cleanArchitecture,
            context.texts.solid,
          ], label: context.texts.architecture),
          Skills(skill: [
            context.texts.responsive,
            context.texts.stateManagement,
            context.texts.performanceOptimise,
            context.texts.tdd,
          ], label: context.texts.ui)
        ]),
      SkillsModel(sectionName: context.texts.backend, skills: [
        Skills(skill: [
          context.texts.firebase,
          context.texts.hive,
          context.texts.sqlite,
          context.texts.mySql,
        ], label: context.texts.database),
        Skills(skill: [
          context.texts.api,
          context.texts.payment,
          context.texts.di,
          context.texts.postman,
          context.texts.git,
        ], label: context.texts.integration),
      ]),
      SkillsModel(sectionName: context.texts.ai, skills: [
        Skills(skill: [
          context.texts.openAi,
          context.texts.claude,
          context.texts.gemini,
          context.texts.chatbot,
          context.texts.prompt,
        ], label: context.texts.aiTools),
      ])
    ];
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          const BackgroundBlur(),
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                HomeTitleSubtitle(
                  title: context.texts.skills,
                  subtitle: context.texts.skillsDesc,
                ),
                const Gap(32),
                SkillsBody(skills: skills,)
              ],
            ),
          )
        ],
      ),
    );
  }
}
