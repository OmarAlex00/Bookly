import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BestSellerBooksTitle extends StatelessWidget {
  const BestSellerBooksTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(bottom: 2),
      child: Text(
        'Harry Potter and the Goblet of Fire',
        style: Styles.bestSellerBooksTitle,
      ),
    );
  }
}
