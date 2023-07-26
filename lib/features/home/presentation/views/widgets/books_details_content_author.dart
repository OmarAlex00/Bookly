import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BooksDetailsContentAuthor extends StatelessWidget {
  const BooksDetailsContentAuthor({super.key, required this.author});
  final String author;
  @override
  Widget build(BuildContext context) {
    return Text(
      author,
      style: Styles.detailsBooksAuthor,
    );
  }
}
