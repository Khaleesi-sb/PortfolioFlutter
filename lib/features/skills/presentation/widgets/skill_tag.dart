import 'package:flutter/material.dart';

import '../../../../styles/app_colors.dart';

class SkillTag extends StatefulWidget {
  const SkillTag({super.key, required this.label, this.featured = false});

  final String label;
  final bool featured;

  @override
  State<SkillTag> createState() => _SkillTagState();
}

class _SkillTagState extends State<SkillTag> {
  bool _hovered = false;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;

    final isActive = widget.featured || _hovered;

    final activeBackground = AppColors.primaryColor.withOpacity(
      isDark ? 0.18 : 0.10,
    );

    final inactiveBackground = isDark
        ? AppColors.surfaceDark
        : AppColors.surfaceLight;

    final activeBorder = AppColors.primaryColor.withOpacity(0.6);

    final inactiveBorder = theme.colorScheme.outline;

    final activeText = isDark
        ? AppColors.lavender
        : AppColors.primaryColor;

    final inactiveText = theme.colorScheme.onSurface;

    return MouseRegion(
      onEnter: (_) => setState(() => _hovered = true),
      onExit: (_) => setState(() => _hovered = false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 180),
        curve: Curves.easeOut,
        padding: const EdgeInsets.symmetric(
          horizontal: 14,
          vertical: 6,
        ),
        decoration: BoxDecoration(
          color: isActive
              ? activeBackground
              : inactiveBackground,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: isActive
                ? activeBorder
                : inactiveBorder,
          ),
        ),
        child: Text(
          widget.label,
          style: TextStyle(
            color: isActive
                ? activeText
                : inactiveText,
            fontSize: 13,
            fontWeight: isActive
                ? FontWeight.w500
                : FontWeight.w400,
          ),
        ),
      ),
    );
  }
}
