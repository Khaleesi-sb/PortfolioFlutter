import 'package:flutter/material.dart';

import '../../../../views/widgets/app_bar/my_app_bar.dart';
import '../../../../views/widgets/background_blur.dart';
import '../widgets/hero_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          BackgroundBlur(),
          HeroWidget(),
          MyAppBar(),
        ],
      ),
    );
  }
}
