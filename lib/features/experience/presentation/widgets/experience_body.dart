import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../helper/extensions/context_extensions.dart';
import '../../../../views/widgets/home_title_subtitle.dart';
import '../../../../views/widgets/styled_card.dart';

const expLen = 6;
const expPointSize = 16.0;
const expScaleFactor = 150.0;
const expPointFactor = experienceHeight / 2 - expPointSize / 2;

class ExperienceBody extends StatelessWidget {
  const ExperienceBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        HomeTitleSubtitle(
          title: context.texts.experiences,
          subtitle: context.texts.experiencesDesc,
        ),
        Gap(32),
        context.isDesktop
            ? const DesktopExperiencesBody()
            : const MobileExperiencesBody(),
      ],
    );
  }
}

class DesktopExperiencesBody extends StatelessWidget {
  const DesktopExperiencesBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: expLen * expScaleFactor + expScaleFactor,
      child: Stack(
        children: [
          Center(
            child: Container(
              width: 3,
              height: expLen * expScaleFactor + expScaleFactor,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    context.colorScheme.primary.withOpacity(0),
                    context.colorScheme.primary,
                    context.colorScheme.primary.withOpacity(0),
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
            ),
          ),
          for(int i = 0; i<expLen; i++) ...[
            if(i.isEven)
            Positioned(
              top: i * expScaleFactor,
              right: 400,
              left: 0,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ExperienceItem(),
                  SizedBox(
                    width: 100,
                    child: DottedLine(
                      dashColor: context.colorScheme.onBackground,
                    ),
                  )
                ],
              ),
            )
            else
              Positioned(
                top: i*expScaleFactor,
                left: 400,
                right: 0,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 100,
                      child: DottedLine(
                        dashColor: context.colorScheme.onBackground,
                      ),
                    ),
                    ExperienceItem(),
                  ],
                ),
              ),
            Positioned(
                top: i * expScaleFactor + expPointFactor,
                right: 0,
                left: 0,
                child: Container(
              alignment: Alignment.center,
              width: expPointSize,
              height: expPointSize,
              decoration: BoxDecoration(
                color: context.colorScheme.onBackground.withOpacity(0.25),
                shape: BoxShape.circle,
              ),
              child: Container(
                width: expPointSize / 2,
                height: expPointSize / 2,
                decoration: BoxDecoration(
                  color: context.colorScheme.onBackground.withOpacity(0.8),
                  shape: BoxShape.circle,
                ),
              ),
            ))
          ]


        ],
      ),
    );
  }
}

class MobileExperiencesBody extends StatelessWidget {
  const MobileExperiencesBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          for(int i = 0; i<expLen; i++) ...[
            ExperienceItem(),
            SizedBox(
              height: 60,
              child: DottedLine(
                dashColor: context.colorScheme.onBackground,
                direction: Axis.vertical,
              ),
            )
          ]
        ],
      ),
    );
  }
}


const experienceWidth = 300.0;
const experienceHeight = 230.0;

class ExperienceItem extends StatelessWidget {
  const ExperienceItem({super.key});

  @override
  Widget build(BuildContext context) {
    return StyledCard(
      width: experienceWidth,
      height: experienceHeight,
      borderEffect: true,
      child: Column(
        children: [
          Text(
            "Title",
            style: context.textStyles.bodyLgBold.copyWith(
              color: context.colorScheme.onBackground,
            ),
          ),
          Expanded(child: Column(
            children: [
              _ExperienceDescriptionItem(),
              _ExperienceDescriptionItem(),
              _ExperienceDescriptionItem(),
              _ExperienceDescriptionItem(),
            ],
          ))
        ],
      ),
    );
  }
}

class _ExperienceDescriptionItem extends StatelessWidget {
  const _ExperienceDescriptionItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 4,
          height: 4,
          decoration: BoxDecoration(
            color: context.colorScheme.onBackground,
            shape: BoxShape.circle,
          ),
        ),
        Gap(6),
        Expanded(
          child: Text(
            "Description Item",
            style: context.textStyles.bodyMdMedium.copyWith(
              color: context.colorScheme.onSurface,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ],
    );
  }
}
