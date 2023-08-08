import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class ResultsBooksPrice extends StatelessWidget {
  const ResultsBooksPrice({
    super.key,
    required this.price,
  });
  final String price;

  @override
  Widget build(BuildContext context) {
    return Text(
      price,
      style: Styles.booksPrice,
    );
  }
}
