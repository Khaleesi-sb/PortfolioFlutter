import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

import '../../../helper/constants/app_icon.dart';
import '../../../helper/extensions/context_extensions.dart';
import '../../state/controllers/app_locale_controller.dart';
import 'seo_text.dart';

class LanguageSelector extends ConsumerWidget {
  const LanguageSelector({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final localeAsync = ref.watch(appLocaleControllerProvider);

    final locale = localeAsync.value ?? 'en';
    final initialIndex = locale == 'en' ? 0 : 1;

    return PopupMenuButton(
      initialValue: initialIndex,
      itemBuilder: (context) => const [
        PopupMenuItem(
          value: 0,
          child: PopupLanguageSwitchItem(
            language: "English",
            icon: AppIcon.ind,
          ),
        ),
        PopupMenuItem(
          value: 1,
          child: PopupLanguageSwitchItem(language: "فارسی", icon: AppIcon.ir),
        ),
      ],
      onSelected: (int val) {
        ref
            .read(appLocaleControllerProvider.notifier)
            .changeLocale(val == 0 ? 'en' : 'fa');
      },
      child: Row(
        children: [
          Icon(
            Icons.language,
            color: context.colorScheme.onSurface,
            size: context.insets.iconSize,
          ),
          const Gap(4),
          SEOText(text: locale == 'en' ? 'En' : 'فارسی'),
        ],
      ),
    );
  }
}

class PopupLanguageSwitchItem extends StatelessWidget {
  final String language;
  final String icon;

  const PopupLanguageSwitchItem({
    super.key,
    required this.language,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(icon, width: 18, height: 18),
        Gap(8),
        SEOText(text: language),
      ],
    );
  }
}
