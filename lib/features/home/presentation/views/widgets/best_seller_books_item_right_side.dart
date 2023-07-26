import 'package:bookly/features/home/presentation/views/widgets/best_seller_books_author.dart';
import 'package:bookly/features/home/presentation/views/widgets/best_seller_books_item_bottom_row.dart';
import 'package:bookly/features/home/presentation/views/widgets/best_seller_books_title.dart';
import 'package:flutter/material.dart';

import '../../../data/models/book_model/book_model.dart';

class BestSellerBooksItemRightSide extends StatelessWidget {
  const BestSellerBooksItemRightSide({
    super.key,
    required this.book,
  });
  final BookModel book;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15, bottom: 10),
      child: SizedBox(
        width: MediaQuery.of(context).size.width * .48,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            BestSellerBooksTitle(
              bookTitle: book.volumeInfo.title ?? '',
            ),
            BestSellerBooksAuthor(
              bookAuthor: book.volumeInfo.authors?[0] ?? '',
            ),
            const Spacer(),
            BestSellerBooksItemBottomRow(
              book: book,
            ),
          ],
        ),
      ),
    );
  }
}
