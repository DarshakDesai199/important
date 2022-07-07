import 'package:flutter/material.dart';

class AnimatedCounter extends StatelessWidget {
  const AnimatedCounter({
    Key? key,
    required this.value,
    this.textStyle,
  }) : super(key: key);

  final int value;
  final TextStyle? textStyle;

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      tween: IntTween(begin: 0, end: value),
      duration: Duration(milliseconds: 300),
      builder: (context, value, child) => Text("$value", style: textStyle),
    );
  }
}
