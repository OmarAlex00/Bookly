import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BestSellerBooksAuthor extends StatelessWidget {
  const BestSellerBooksAuthor({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      'J.K. Rolling',
      style: Styles.bestSellerBooksAuthor,
    );
  }
}
