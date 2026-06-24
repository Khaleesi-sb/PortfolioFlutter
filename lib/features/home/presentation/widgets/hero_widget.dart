import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:my_portfolio/views/widgets/powered_by_flutter.dart';

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
      mainAxisSize: MainAxisSize.min,
      children: [
        const PoweredByFlutter(),
        context.isMobile
            ? const _SmallHero()
            : const _LargeHero(),
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
        ConstrainedBox(
          constraints: BoxConstraints(maxWidth: 140),
          child: const HeroImage(),
        ),
        Gap(Insets.xl),
        const HeroText(),
        Gap(Insets.xxl),
        const SmallHeroButtons(),
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
        Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              HeroText(),
              Gap(Insets.xxl),
              LargeHeroButtons(),
            ],
          ),
        ),
      ],
    );
  }
}
