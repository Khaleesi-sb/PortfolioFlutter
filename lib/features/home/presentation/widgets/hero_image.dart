import 'package:flutter/material.dart';

class HeroImage extends StatelessWidget {
  const HeroImage({super.key});

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(
        maxWidth: 302,
        maxHeight: 500,
      ),
      child: AspectRatio(
        aspectRatio: 302 / 500,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(250),
          child: Image.asset("assets/images/shilpa.jpeg",
              fit: BoxFit.cover),
        ),
      ),
    );
  }
}
