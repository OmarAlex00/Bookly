import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BestSellerBooksPrice extends StatelessWidget {
  const BestSellerBooksPrice({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Text(
      '19.99 \$',
      style: Styles.booksPrice,
    );
  }
}
