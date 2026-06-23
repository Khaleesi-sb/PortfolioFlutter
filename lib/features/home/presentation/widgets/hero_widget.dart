import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../helper/extensions/context_extensions.dart';
import '../../../../styles/app_size.dart';
import 'hero_buttons.dart';
import 'hero_image.dart';
import 'hero_text.dart';

class HeroWidget extends StatelessWidget {
  const HeroWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Flutter"),
        context.isMobile
            ? Expanded(child: _SmallHero())
            : Expanded(child: _LargeHero()),
      ],
    );
  }
}

class _SmallHero extends StatelessWidget {
  const _SmallHero();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(
          child: ConstrainedBox(
            constraints: BoxConstraints(maxWidth: 140),
            child: HeroImage(),
          ),
        ),
        Gap(Insets.xl),
        Flexible(child: HeroText()),
        Gap(Insets.xxl),
        Flexible(child: SmallHeroButtons()),
      ],
    );
  }
}

class _LargeHero extends StatelessWidget {
  const _LargeHero();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(child: HeroImage()),
        Gap(Insets.xxl),
        Flexible(
          flex: 2,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Flexible(child: HeroText()),
              Gap(Insets.xxl),
              Flexible(child: LargeHeroButtons()),
            ],
          ),
        ),
      ],
    );
  }
}
