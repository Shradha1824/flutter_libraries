library shaded_text_with_color;

import 'package:flutter/material.dart';

typedef ShadedBuilder = Widget Function(
    BuildContext context, String text, Color color);

class ShadedTextWithColor extends StatelessWidget {
  final ShadedBuilder shadedBuilder;
  final String text;
  final Color shadeColor;
  final Color textColor;
  final double xTrans, yTrans;

  ShadedTextWithColor({
    required this.shadedBuilder,
    required this.text,
    required this.shadeColor,
    required this.textColor,
    required this.xTrans,
    required this.yTrans,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.passthrough,
      children: [
        Transform(
          child: shadedBuilder(context, text, shadeColor),
          transform: Matrix4.translationValues(xTrans, yTrans, 0.0),
        ),
        shadedBuilder(context, text, textColor),
      ],
    );
  }
}
