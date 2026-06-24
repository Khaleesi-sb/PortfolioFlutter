import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../helper/extensions/context_extensions.dart';
import '../../../../styles/app_size.dart';
import '../../../../views/widgets/styled_button.dart';

class LargeHeroButtons extends StatelessWidget {
  const LargeHeroButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        PrimaryButton(title: context.texts.details, onPressed: () {
          // todo: functionality
        },),
        Gap(Insets.lg),
        OutlineButton(title: context.texts.contact,),
      ],
    );
  }
}

class SmallHeroButtons extends StatelessWidget {
  const SmallHeroButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          child: PrimaryButton(onPressed: () {
            // todo: add functionality
          }, title: context.texts.details,),
        ),
        Gap(Insets.lg),
        SizedBox(
          width: double.infinity,
          child: OutlineButton(
            title: context.texts.contact,
          ),
        )
      ],
    );
  }
}
