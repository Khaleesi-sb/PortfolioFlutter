import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../helper/extensions/context_extensions.dart';
import '../../../../styles/app_size.dart';
import '../../../../styles/app_text_styles.dart';
import '../../../../views/widgets/styled_card.dart';

class ContactCard extends StatelessWidget {
  const ContactCard({super.key});

  @override
  Widget build(BuildContext context) {
    final ts = context.textStyles;
    final insets = context.insets;
    final scheme = context.colorScheme;

    return SizedBox(
      width: 400,
      child: StyledCard(
        width: 400,
        height: 400,
        borderEffect: true,
        child: Column(
          children: [
            Center(
              child: Text(
                'Contact Me',
                style: ts.titleLgBold.copyWith(color: scheme.onSurface),
              ),
            ),
            Gap(32),
            Center(
              child: _ContactRow(
                icon: Icons.location_on_outlined,
                label: 'Address',
                value: '42 Maple St, Suite 3B\nSan Francisco, CA 94107',
                scheme: scheme,
                ts: ts,
              ),
            ),
            Gap(Insets.xl),
            Center(
              child: _ContactRow(
                icon: Icons.phone_outlined,
                label: 'Phone',
                value: '+1 (415) 555-0198',
                scheme: scheme,
                ts: ts,
              ),
            ),
            Gap(Insets.xl),
            Center(
              child: _ContactRow(
                icon: Icons.email_outlined,
                label: 'Email',
                value: 'mahdi@example.com',
                scheme: scheme,
                ts: ts,
              ),
            ),
            Gap(Insets.xl),
            Center(
              child: _ContactRow(
                icon: Icons.link,
                label: 'LinkedIn',
                value: 'linkedin.com/in/mahdimirzadeh',
                scheme: scheme,
                ts: ts,
                valueColor: scheme.primary,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _ContactRow extends StatelessWidget {
  const _ContactRow({
    required this.icon,
    required this.label,
    required this.value,
    required this.scheme,
    required this.ts,
    this.valueColor,
  });

  final IconData icon;
  final String label;
  final String value;
  final ColorScheme scheme;
  final AppTextStyles ts;
  final Color? valueColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      // crossAxisAlignment: CrossAxisAlignment.center,
      // mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 36,
          height: 36,
          decoration: BoxDecoration(
            color: scheme.primary.withOpacity(0.12),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Icon(icon, size: 18, color: scheme.primary),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                label.toUpperCase(),
                style: ts.bodyMdMedium.copyWith(
                  color: scheme.onSurfaceVariant,
                  letterSpacing: 0.6,
                  fontSize: 10,
                ),
              ),
              const SizedBox(height: 2),
              Text(
                value,
                style: ts.bodyLgMedium.copyWith(
                  color: valueColor ?? scheme.onSurface,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}