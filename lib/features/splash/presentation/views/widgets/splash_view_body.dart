import 'package:bookly/core/utlis/assets.dart';
import 'package:flutter/material.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(Asset.kLogo),
        const SizedBox(height: 5),
        const Text(
          'Read books for free',
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
