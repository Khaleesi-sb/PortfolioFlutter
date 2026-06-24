import 'package:flutter/material.dart';

import '../../helper/extensions/context_extensions.dart';
import 'curved_lined_painter.dart';

class StyledCard extends StatefulWidget {
  const StyledCard({
    super.key,
    this.width,
    this.height,
    this.padding,
    this.borderRadius,
    required this.child,
    this.borderEffect = false
  });

  final double? width;
  final double? height;
  final EdgeInsets? padding;
  final BorderRadius? borderRadius;
  final Widget child;
  final bool borderEffect;

  @override
  State<StyledCard> createState() => _StyledCardState();
}

class _StyledCardState extends State<StyledCard> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        if(widget.borderEffect) ...[
          const _BorderShadow(),
          Positioned(
            right: 0,
            bottom: 0,
            child: _BorderShadow(),)
        ],
        Container(
          width: widget.width,
          height: widget.height,
          padding: widget.padding ?? EdgeInsets.all(context.insets.cardPadding),
          decoration: BoxDecoration(
            border: Border.all(color: context.colorScheme.outline),
            color: context.colorScheme.surface,
            borderRadius: widget.borderRadius ?? BorderRadius.circular(24),
          ),
          child: widget.child,
        ),
        if(widget.borderEffect) ...[
          CustomPaint(
            size: Size(widget.width ?? 0, widget.height ?? 0),
            painter: CurvedLinedPainter(color: context.colorScheme.primary),
          )
        ]
      ],
    );
  }
}

class _BorderShadow extends StatelessWidget {
  const _BorderShadow({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 60,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
              color: context.colorScheme.primary.withOpacity(0.5),
              blurRadius: 10,
              spreadRadius: 2
          )
        ],
        borderRadius: BorderRadius.circular(24),
      ),
    );
  }
}


