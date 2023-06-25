import 'package:flutter/material.dart';

class SlidingText extends StatelessWidget {
  const SlidingText({
    super.key,
    required this.sliding,
  });

  final Animation<Offset> sliding;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: sliding,
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
