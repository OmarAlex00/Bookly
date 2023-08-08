import 'package:bookly/features/home/data/models/book_model/book_model.dart';

import 'package:flutter/material.dart';

import '../../../../home/presentation/views/widgets/books_img.dart';

class ResultsItemLeftSide extends StatelessWidget {
  const ResultsItemLeftSide({
    super.key,
    required this.book,
  });
  final BookModel book;

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: '${book.tag}${book.id}',
      child: BooksImg(
        book: book,
      ),
    );
  }
}
