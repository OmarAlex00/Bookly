import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/presentation/views/widgets/books_img.dart';
import 'package:flutter/material.dart';

class BestSellerBooksItemLeftSide extends StatelessWidget {
  const BestSellerBooksItemLeftSide({
    super.key,
    required this.book,
  });
  final BookModel book;

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: book.id!,
      child: BooksImg(
        book: book,
      ),
    );
  }
}
