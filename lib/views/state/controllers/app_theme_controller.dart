import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../shared/app_shared_pref.dart';

part 'app_theme_controller.g.dart';

@riverpod
class AppThemeController  extends _$AppThemeController{
  @override
  Future<ThemeMode> build(){
    return AppSharedPref().getAppTheme();
  }

  void changeTheme(ThemeMode theme) async{
   await AppSharedPref().setAppTheme(theme == ThemeMode.light ? 'light' : 'dark');
   state = AsyncData(theme);
  }
}