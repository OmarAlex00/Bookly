import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BestSellerTitle extends StatelessWidget {
  const BestSellerTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 30, top: 46, bottom: 10),
      child: Text(
        'Best Seller',
        style: Styles.homeTitleMedium,
      ),
    );
  }
}
