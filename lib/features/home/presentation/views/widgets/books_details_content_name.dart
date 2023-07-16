import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BooksDetailsContentName extends StatelessWidget {
  const BooksDetailsContentName({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      'The Jungle Book',
      style: Styles.detailsBooksTitle,
      textAlign: TextAlign.center,
    );
  }
}
