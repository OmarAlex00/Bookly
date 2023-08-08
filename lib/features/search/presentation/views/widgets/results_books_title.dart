import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class ResultsBooksTitle extends StatelessWidget {
  const ResultsBooksTitle({
    super.key,
    required this.bookTitle,
  });
  final String bookTitle;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 2),
      child: Text(
        bookTitle,
        style: Styles.bestSellerBooksTitle,
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }
}
