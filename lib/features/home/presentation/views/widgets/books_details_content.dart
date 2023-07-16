import 'package:bookly/features/home/presentation/views/widgets/books_details_content_author.dart';
import 'package:bookly/features/home/presentation/views/widgets/books_details_content_img.dart';
import 'package:bookly/features/home/presentation/views/widgets/books_details_content_name.dart';
import 'package:bookly/features/home/presentation/views/widgets/books_details_content_rate_and_count_row.dart';
import 'package:flutter/material.dart';

class BooksDetailsContent extends StatelessWidget {
  const BooksDetailsContent({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        BooksDetailsContentImg(),
        SizedBox(height: 20),
        BooksDetailsContentName(),
        SizedBox(height: 5),
        BooksDetailsContentAuthor(),
        SizedBox(
          height: 10,
        ),
        BooksDetailsContentRateAndCount(),
      ],
    );
  }
}
