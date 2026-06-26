import 'package:flutter/material.dart';

import '../../../helper/extensions/context_extensions.dart';

class AppLogo extends StatelessWidget {
  const AppLogo({super.key, this.isShort=false});

  final bool isShort;

  @override
  Widget build(BuildContext context) {
    return Text(isShort ? context.texts.shilpa : context.texts.shilpa_bhattacharya, style: context.textStyles.titleLgBold,);
  }
}