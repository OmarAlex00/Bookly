import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BooksDetailsContentPrice extends StatelessWidget {
  const BooksDetailsContentPrice({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        height: 48,
        width: 150,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(16),
            bottomLeft: Radius.circular(16),
          ),
        ),
        child: Center(
          child: Text(
            '19.99 €',
            style: Styles.booksPrice.copyWith(color: Colors.black),
          ),
        ),
      ),
    );
  }
}
