import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BooksDetailsContentAuthor extends StatelessWidget {
  const BooksDetailsContentAuthor({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'J.K. Rollings',
      style: Styles.detailsBooksAuthor,
    );
  }
}
