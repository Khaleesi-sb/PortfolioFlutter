import 'package:flutter/material.dart';

import '../../../helper/extensions/context_extensions.dart';
import '../../../styles/app_size.dart';
import 'app_bar_drawer_icon.dart';
import 'app_logo.dart';
import 'app_bar_large_menus.dart';
import 'drawer_menu.dart';
import 'language_selector.dart';
import 'theme_switcher.dart';

class MyAppBar extends StatelessWidget{
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          color: context.theme.appBarTheme.backgroundColor,
          height: context.insets.appBarHeight,
          padding: EdgeInsets.symmetric(horizontal: context.insets.padding),
          alignment: Alignment.center,
          child: ConstrainedBox(
            constraints: BoxConstraints(
              maxWidth: Insets.maxWidth,
            ),
            child: Row(
              children: [
                AppLogo(isShort: true,),
                Spacer(),
                if(context.isDesktop) AppBarLargeMenus(),
                Spacer(),
                LanguageSelector(),
                ThemeSwitcher(),
                if(!context.isDesktop) AppBarDrawerIcon()
              ],
            ),
          ),
        ),
        if(!context.isDesktop) DrawerMenu()
      ],
    );
  }
}

