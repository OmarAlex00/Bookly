import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/presentation/views/widgets/details_img.dart';
import 'package:flutter/material.dart';

class BooksDetailsContentImg extends StatelessWidget {
  const BooksDetailsContentImg({super.key, required this.book});
  final BookModel book;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: MediaQuery.of(context).size.height * .32,
        child: DetailImg(
          book: book,
        ));
  }
}
