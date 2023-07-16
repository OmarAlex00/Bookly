import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BooksDetailsContentPricingSection extends StatelessWidget {
  const BooksDetailsContentPricingSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(16)),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          BooksDetailsContentPrice(),
          BooksDetailsContentFreePreview()
        ],
      ),
    );
  }
}

class BooksDetailsContentPrice extends StatelessWidget {
  const BooksDetailsContentPrice({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}

class BooksDetailsContentFreePreview extends StatelessWidget {
  const BooksDetailsContentFreePreview({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        height: 48,
        width: 150,
        decoration: const BoxDecoration(
          color: Color(0xffEF8262),
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(16), bottomRight: Radius.circular(16)),
        ),
        child: const Center(
          child: Text(
            'Free Preview',
            style: TextStyle(
              fontSize: 18,
            ),
          ),
        ),
      ),
    );
  }
}
