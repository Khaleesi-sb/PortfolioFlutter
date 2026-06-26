import 'dart:ui';

import 'package:flutter/material.dart';

import '../../helper/extensions/context_extensions.dart';
import 'app_bar/my_app_bar.dart';
import 'background_blur.dart';
import 'footer.dart';

class AppScaffold extends StatelessWidget {
  const AppScaffold({super.key, required this.slivers, this.backgroundGlowAtBottom=false});

  final List<Widget> slivers;
  final bool? backgroundGlowAtBottom;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        body: Stack(
          fit: StackFit.expand,
          children: [
            BackgroundBlur(positionBottom: backgroundGlowAtBottom,),
            Padding(
              padding: EdgeInsets.only(top: context.insets.appBarHeight),
              child: ScrollConfiguration(
                behavior: ScrollConfiguration.of(context).copyWith(
                  dragDevices: {
                    PointerDeviceKind.touch,
                    PointerDeviceKind.mouse,
                    PointerDeviceKind.trackpad,
                  },
                ),
                child: CustomScrollView(
                  physics: const BouncingScrollPhysics(
                    parent: AlwaysScrollableScrollPhysics(),
                  ),
                  slivers: [
                    ...slivers,
                    const SliverToBoxAdapter(child: Footer()),
                  ],
                ),
              ),
            ),
            const Positioned(top: 0, left: 0, right: 0, child: MyAppBar()),
          ],
        ),
      ),
    );
  }
}
