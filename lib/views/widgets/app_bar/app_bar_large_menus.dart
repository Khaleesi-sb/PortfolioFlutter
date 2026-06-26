import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:my_portfolio/features/skills/presentation/screens/skills_page.dart';

import '../../../helper/constants/app_menu_list.dart';
import '../../../styles/app_size.dart';
import '../../../styles/app_text_styles.dart';
import '../../state/controllers/drawer_menu_controller.dart';


class AppBarLargeMenus extends ConsumerWidget {
  const AppBarLargeMenus({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Row(
      children: AppMenuList.getItem(context)
          .map((AppMenu menu) => LargeAppBarMenuItem(
          title: menu.title,
          isSelected: true,
          onTap: (){
            ref.read(drawerMenuControllerProvider.notifier).close();
            GoRouter.of(context).go(menu.path);
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

