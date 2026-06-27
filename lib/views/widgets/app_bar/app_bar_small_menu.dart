import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../helper/constants/app_menu_list.dart';
import '../../../styles/app_size.dart';
import '../../../styles/app_text_styles.dart';
import '../../state/controllers/drawer_menu_controller.dart';


class AppBarSmallMenus extends ConsumerWidget {
  const AppBarSmallMenus({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
        children: AppMenuList.getItem(context)
            .map((AppMenu menu) => SmallAppBarMenuItem(
            title: menu.title,
            isSelected: GoRouterState.of(context).fullPath == menu.path,
            onTap: (){
              ref.read(drawerMenuControllerProvider.notifier).close();
              GoRouter.of(context).go(menu.path);
            }
        )).toList()
    );
  }
}

class SmallAppBarMenuItem extends StatelessWidget {
  final String title;
  final bool isSelected;
  final VoidCallback onTap;
  const SmallAppBarMenuItem({super.key, required this.title, required this.isSelected, required this.onTap});

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

