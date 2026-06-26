import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../helper/extensions/context_extensions.dart';
import '../../../../styles/app_size.dart';
import '../../../../views/widgets/app_scaffold.dart';
import '../widgets/contact_card.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      backgroundGlowAtBottom: true,
      slivers: [
        SliverGap(context.insets.appBarHeight),
        SliverToBoxAdapter(
          child: Center(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: context.insets.padding),
              constraints: const BoxConstraints(maxWidth: Insets.maxWidth),
              child: ContactCard(),
            ),
          ),
        ),
        SliverGap(16),
      ],
    );
  }
}
