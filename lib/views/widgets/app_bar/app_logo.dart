import 'package:flutter/material.dart';

import '../../../helper/extensions/context_extensions.dart';

class AppLogo extends StatelessWidget {
  const AppLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Text("Portfolio", style: context.textStyles.titleLgBold,);
  }
}