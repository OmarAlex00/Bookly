import 'package:bookly/features/home/presentation/views/widgets/cart_icon.dart';
import 'package:flutter/material.dart';

import 'x_icon.dart';

class DetailsAppBar extends StatelessWidget {
  const DetailsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 40, left: 25, right: 25, bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [XIcon(), CartIcon()],
      ),
    );
  }
}
