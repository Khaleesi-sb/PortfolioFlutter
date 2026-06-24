import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../helper/extensions/context_extensions.dart';

class SectionBadge extends StatelessWidget {
  const SectionBadge({super.key, required this.label});

  final String label;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 6),
          decoration: BoxDecoration(
            color: const Color(0xFF7C5CBF).withOpacity(0.18),
            borderRadius: BorderRadius.circular(20),
            border: Border.all(
              color: const Color(0xFF7C5CBF).withOpacity(0.35),
            ),
          ),
          child: Text(
            label,
            style: const TextStyle(
              color: Color(0xFF9B7DE0),
              fontSize: 12,
              fontWeight: FontWeight.w600,
              letterSpacing: 1.1,
            ),
          ),
        ),
        Gap(16),
        Expanded(
          child: Container(
            width: double.infinity,
            height: 3,
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
      ],
    );
  }
}
