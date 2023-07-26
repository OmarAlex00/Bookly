import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BestSellerBooksAuthor extends StatelessWidget {
  const BestSellerBooksAuthor({
    super.key,
    required this.bookAuthor,
  });
  final String bookAuthor;

  @override
  Widget build(BuildContext context) {
    return Text(
      bookAuthor,
      style: Styles.bestSellerBooksAuthor,
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
    );
  }
}
