import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:my_portfolio/views/state/controllers/drawer_menu_controller.dart';

import '../../../helper/constants/app_menu_list.dart';
import '../../../helper/extensions/context_extensions.dart';
import 'app_bar_large_menus.dart';

class DrawerMenu extends ConsumerStatefulWidget {
  const DrawerMenu({super.key});

  @override
  ConsumerState<DrawerMenu> createState() => _DrawerMenuState();
}

class _DrawerMenuState extends ConsumerState<DrawerMenu>
    with SingleTickerProviderStateMixin {
  late final _controller = AnimationController(
    duration: Duration(milliseconds: 200),
    vsync: this,
  );

  late final _animation = Tween<Offset>(
    begin: Offset(0, -1),
    end: Offset.zero,
  ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeIn));

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    ref.listenManual(
      drawerMenuControllerProvider,
          (previous, next) {
        if (next.value == true) {
          _controller.forward();
        } else {
          _controller.reverse();
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    // ref.listen(drawerMenuControllerProvider, (previous, next) {
    //   if (next.value==true) {
    //     _controller.forward();
    //   } else {
    //     _controller.reverse();
    //   }
    // });
    return ClipRRect(
      child: SlideTransition(
        position: _animation,
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: context.colorScheme.surface,
            boxShadow: [
              BoxShadow(
                color: context.colorScheme.surface.withOpacity(0.4),
                blurRadius: 6,
                spreadRadius: 3,
              ),
            ],
          ),
          child: SmallMenu(),
        ),
      ),
    );
  }
}

class SmallMenu extends ConsumerWidget {
  const SmallMenu({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: AppMenuList.getItem(context)
          .map(
            (menu) => LargeAppBarMenuItem(
              title: menu.title,
              isSelected: true,
              onTap: () {
                ref.read(drawerMenuControllerProvider.notifier).close();
                GoRouter.of(context).go(menu.path);
              },
            ),
          )
          .toList(),
    );
  }
}