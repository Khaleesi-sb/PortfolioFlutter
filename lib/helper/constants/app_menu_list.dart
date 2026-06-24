import 'package:flutter/cupertino.dart';
import 'package:my_portfolio/helper/extensions/context_extensions.dart';
import 'package:my_portfolio/routes/app_routes.dart';

class AppMenuList {
  static List<AppMenu> getItem(BuildContext context){
    return [
      AppMenu(title: context.texts.home, path: AppRoutes.home),
      // AppMenu(title: context.texts.about, path: AppRoutes.about),
      AppMenu(title: context.texts.skills, path: AppRoutes.skills),
      AppMenu(title: context.texts.projects, path: AppRoutes.projects),
      // AppMenu(title: context.texts.blogs, path: AppRoutes.blogs),
      AppMenu(title: context.texts.contact, path: AppRoutes.contact),
    ];
  }
}

class AppMenu{
  final String title;
  final String path;
  AppMenu({required this.title, required this.path});
}