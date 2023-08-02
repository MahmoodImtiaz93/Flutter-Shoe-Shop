import 'package:flutter/material.dart';

enum AniProps{opacity,translateY}
class FadeAnimation extends StatelessWidget {
  const FadeAnimation({super.key,  required this.delay, required this.child});

  final double delay;
  final Widget child;


  @override
  Widget build(BuildContext context) {
    final tween = MultiTween();
    return Container();
  }
}