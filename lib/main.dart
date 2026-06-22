import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'l10n/app_localizations.dart';
import 'styles/app_theme.dart';
import 'views/screens/home_page.dart';
import 'views/state/controllers/app_locale_controller.dart';
import 'views/state/controllers/app_theme_controller.dart';

void main() {
  runApp(ProviderScope(child: const App()));
}

class App extends ConsumerWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final locale = ref.watch(appLocaleControllerProvider);
    final theme = ref.watch(appThemeControllerProvider);
    return MaterialApp(
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('en', ''),
        Locale('fa', ''),
        Locale('hi', ''),
      ],
      locale: Locale(locale.value ?? 'en', ''),
      darkTheme: AppTheme(fontFamily: _fontsFamily(locale.value)).dark,
      theme: AppTheme(fontFamily: _fontsFamily(locale.value)).light,
      themeMode: theme.value ?? ThemeMode.light,
      home: const HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }

  String _fontsFamily(String? locale){
    return (locale ?? 'en') == 'en' ? 'Poppins' : 'Vazirmatn';
  }
}
