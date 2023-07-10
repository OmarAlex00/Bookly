import 'package:bookly/core/utils/assets.dart';
import 'package:flutter/material.dart';

class AppBarLogo extends StatelessWidget {
  const AppBarLogo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      Asset.kLogo,
      height: 16,
      width: 75,
    );
  }
}
