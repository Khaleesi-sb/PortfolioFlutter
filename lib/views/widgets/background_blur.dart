import 'package:flutter/material.dart';

import '../../styles/app_size.dart';
import '../../helper/extensions/context_extensions.dart';

class BackgroundBlur extends StatelessWidget {
  const BackgroundBlur({
    super.key,
    this.positionBottom = false,
  });

  final bool? positionBottom;

  @override
  Widget build(BuildContext context) {
    final offset = (-(context.width / 2 / 2)) + Insets.xxxl;

    return Positioned(
      top: positionBottom ?? false ? null : -(context.width / 2 / 2),
      bottom: positionBottom ?? false ? -(context.width / 2 / 2) : null,
      left: offset,
      right: positionBottom ?? false ? offset : null,
      child: Container(
        width: context.width / 2,
        height: context.width / 2,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          gradient: RadialGradient(
            colors: [
              context.colorScheme.primary.withOpacity(0.35),
              context.colorScheme.primary.withOpacity(0.15),
              Colors.transparent,
            ],
          ),
          boxShadow: [
            BoxShadow(
              color: context.colorScheme.primary.withOpacity(0.4),
              blurRadius: 900,
              spreadRadius: 100,
            ),
          ],
        ),
      ),
    );
  }
}