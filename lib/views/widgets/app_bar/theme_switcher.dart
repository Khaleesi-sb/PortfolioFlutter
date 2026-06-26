import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_portfolio/helper/extensions/context_extensions.dart';

import '../../state/controllers/app_theme_controller.dart';

class ThemeSwitcher extends ConsumerWidget {
  const ThemeSwitcher({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeMode = ref.watch(appThemeControllerProvider).value;
    final isLight = themeMode == ThemeMode.light;

    return InkWell(
      borderRadius: BorderRadius.circular(20),
      onTap: () {
        ref.read(appThemeControllerProvider.notifier).changeTheme(
          isLight ? ThemeMode.dark : ThemeMode.light,
        );
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 250),
        padding: const EdgeInsets.all(8),
        child: AnimatedSwitcher(
          duration: const Duration(milliseconds: 250),
          transitionBuilder: (child, animation) =>
              RotationTransition(
                turns: animation,
                child: child,
              ),
          child: Icon(
            isLight
                ? Icons.wb_sunny_rounded
                : Icons.nightlight_round,
            key: ValueKey(isLight),
            size: context.insets.iconSize,
            color: Theme.of(context).colorScheme.primary,
          ),
        ),
      ),
    );
  }
}