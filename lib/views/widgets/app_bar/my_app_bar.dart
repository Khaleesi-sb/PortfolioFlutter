import 'package:flutter/material.dart';
// import 'package:my_portfolio/helper/extensions/context_extensions.dart';
// import 'package:my_portfolio/views/widgets/app_bar/app_bar_drawer_icon.dart';

import '../../../helper/extensions/context_extensions.dart';
import '../../../styles/app_size.dart';
import 'app_bar_drawer_icon.dart';
import 'app_logo.dart';
import 'app_bar_large_menus.dart';
import 'language_selector.dart';
import 'theme_switcher.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget{
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
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
            AppLogo(),
            Spacer(),
            if(context.isDesktop) AppBarLargeMenus(),
            Spacer(),
            LanguageSelector(),
            ThemeSwitcher(),
            if(!context.isDesktop) AppBarDrawerIcon()
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}

