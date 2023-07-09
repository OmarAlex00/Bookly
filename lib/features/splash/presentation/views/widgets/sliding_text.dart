import 'package:flutter/material.dart';

class SlidingText extends StatelessWidget {
  const SlidingText({
    super.key,
    required this.sliding,
    required this.controller,
  });

  final Animation<Offset> sliding;
  final AnimationController controller;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: controller,
        builder: (context, _) {
          return SlideTransition(
            position: sliding,
            child: const Text(
              'Read books for free',
              textAlign: TextAlign.center,
            ),
          );
        });
  }
}
