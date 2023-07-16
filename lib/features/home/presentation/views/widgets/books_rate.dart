import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BooksRate extends StatelessWidget {
  const BooksRate({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 5),
      child: Text(
        '4.8',
        style: Styles.booksRateAndReview,
      ),
    );
  }
}
