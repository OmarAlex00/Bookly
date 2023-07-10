import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BestSellerBooksCount extends StatelessWidget {
  const BestSellerBooksCount({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      '(23900)',
      style: Styles.booksCount,
    );
  }
}
