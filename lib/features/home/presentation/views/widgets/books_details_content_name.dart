import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BooksDetailsContentName extends StatelessWidget {
  const BooksDetailsContentName({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: Styles.detailsBooksTitle,
      textAlign: TextAlign.center,
    );
  }
}
