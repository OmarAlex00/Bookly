import 'package:bookly/features/home/presentation/views/widgets/books_details_content_free_preview.dart';
import 'package:bookly/features/home/presentation/views/widgets/books_details_content_price.dart';
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
