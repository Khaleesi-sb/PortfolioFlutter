import 'package:flutter/material.dart';

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
    final isActive = widget.featured || _hovered;

    return MouseRegion(
      onEnter: (_) => setState(() => _hovered = true),
      onExit: (_) => setState(() => _hovered = false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 180),
        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 6),
        decoration: BoxDecoration(
          color: isActive
              ? const Color(0xFF7C5CBF).withOpacity(0.12)
              : const Color(0xFF1E1E2E),
          borderRadius: BorderRadius.circular(6),
          border: Border.all(
            color: isActive
                ? const Color(0xFF7C5CBF).withOpacity(0.55)
                : const Color(0xFF2A2A3A),
          ),
        ),
        child: Text(
          widget.label,
          style: TextStyle(
            color: isActive ? const Color(0xFFC4AAFF) : const Color(0xFFF0F0F0),
            fontSize: 13,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }
}
