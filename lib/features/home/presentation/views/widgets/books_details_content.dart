import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/presentation/views/widgets/books_details_content_author.dart';
import 'package:bookly/features/home/presentation/views/widgets/books_details_content_img.dart';
import 'package:bookly/features/home/presentation/views/widgets/books_details_content_name.dart';
import 'package:bookly/features/home/presentation/views/widgets/books_details_content_pricing_section.dart';
import 'package:bookly/features/home/presentation/views/widgets/rate_and_count.dart';
import 'package:bookly/features/home/presentation/views/widgets/you_can_also_like.dart';
import 'package:flutter/material.dart';

import 'other_books.dart';

class BooksDetailsContent extends StatelessWidget {
  const BooksDetailsContent({super.key, required this.book});
  final BookModel book;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BooksDetailsContentImg(
          book: book,
        ),
        const SizedBox(height: 25),
        BooksDetailsContentName(
          title: book.volumeInfo.title!,
        ),
        const SizedBox(height: 5),
        BooksDetailsContentAuthor(
          author: book.volumeInfo.authors?[0] ?? '',
        ),
        const SizedBox(
          height: 15,
        ),
        const RateAndCount(),
        const SizedBox(
          height: 37,
        ),
        BooksDetailsContentPricingSection(
          book: book,
        ),
        const Expanded(
          child: SizedBox(
            height: 35,
          ),
        ),
        const YouCanAlsoLike(),
        const SizedBox(
          height: 25,
        ),
        OtherBooks(
          book: book,
        ),
      ],
    );
  }
}
