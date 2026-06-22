import 'package:flutter/material.dart';

import '../../../helper/constants/app_menu_list.dart';
import '../../../styles/app_size.dart';
import '../../../styles/app_text_styles.dart';


class AppBarLargeMenus extends StatelessWidget {
  const AppBarLargeMenus({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: AppMenuList.getItem(context)
          .map((AppMenu menu) => LargeAppBarMenuItem(
          title: menu.title,
          isSelected: true,
          onTap: (){
            // TODO: add functionality
          }
      )).toList()
    );
  }
}

class LargeAppBarMenuItem extends StatelessWidget {
  final String title;
  final bool isSelected;
  final VoidCallback onTap;
  const LargeAppBarMenuItem({super.key, required this.title, required this.isSelected, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(padding: EdgeInsets.symmetric(
          vertical: Insets.xs,
          horizontal: Insets.med),
        child: Text(title, style: SmallTextStyles().bodyLgMedium,),
      ),
    );
  }
}

