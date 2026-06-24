import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../helper/extensions/context_extensions.dart';

class PoweredByFlutter extends StatelessWidget {
  const PoweredByFlutter({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(
          'assets/images/flutter.png',
          width: 24,
          height: 24,
          color: context.colorScheme.onBackground,
        ),
        Gap(8),
        Text(
          context.texts.poweredByFlutter,
          style: context.textStyles.bodyMdMedium.copyWith(
            color: context.colorScheme.onBackground,
          ),
        ),
      ],
    );
  }
}
