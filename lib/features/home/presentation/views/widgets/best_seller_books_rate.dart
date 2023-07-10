import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BestSellerBooksRate extends StatelessWidget {
  const BestSellerBooksRate({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Text(
        '4.8',
        style: Styles.booksRateAndReview,
      ),
    );
  }
}
