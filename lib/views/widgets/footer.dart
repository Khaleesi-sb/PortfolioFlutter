import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../helper/constants/app_icon.dart';
import '../../helper/extensions/context_extensions.dart';
import '../../styles/app_size.dart';
import 'app_bar/app_bar_large_menus.dart';
import 'app_bar/app_bar_small_menu.dart';
import 'app_bar/app_logo.dart';
import 'powered_by_flutter.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: context.theme.appBarTheme.backgroundColor,
      padding: EdgeInsets.all(context.insets.padding),
      width: double.infinity,
      alignment: Alignment.center,
      child: ConstrainedBox(
        constraints: BoxConstraints(maxWidth: Insets.maxWidth),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (context.isDesktop) _DesktopFooter() else _MobileFooter(),
            const Divider(height: 24),
            const PoweredByFlutter(),
          ],
        ),
      ),
    );
  }
}

class _DesktopFooter extends StatelessWidget {
  const _DesktopFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        AppLogo(),
        Spacer(),
        AppBarLargeMenus(),
        Spacer(),
        _FooterLinks(),
      ],
    );
  }
}

class _MobileFooter extends StatelessWidget {
  const _MobileFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(child: AppLogo()),
        Spacer(),
        Flexible(child: AppBarSmallMenus()),
        Spacer(),
        Flexible(child: _FooterLinks()),
      ],
    );
  }
}

class _FooterLinks extends StatelessWidget {
  const _FooterLinks({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        _FooterLinkItem(icon: AppIcon.linkedin, tooltip: context.texts.linkedin, onPressed: () {}),
        _FooterLinkItem(icon: AppIcon.github, tooltip: context.texts.github, onPressed: () {}),
        _FooterLinkItem(icon: AppIcon.instagram, tooltip: context.texts.instagram, onPressed: () {}),
        // _FooterLinkItem(icon: AppIcon.scaler, onPressed: () {}),
      ],
    );
  }
}

class _FooterLinkItem extends StatelessWidget {
  const _FooterLinkItem({
    required this.icon,
    required this.onPressed, this.tooltip,
  });
  final VoidCallback onPressed;
  final String icon;
  final String? tooltip;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      tooltip: tooltip,
      icon: SvgPicture.asset(
        icon,
        colorFilter: ColorFilter.mode(
          context.colorScheme.onBackground,
          BlendMode.srcIn,
        ),
      ),
    );
  }
}
