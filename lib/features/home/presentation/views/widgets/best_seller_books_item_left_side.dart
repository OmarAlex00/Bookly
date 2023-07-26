import 'package:bookly/features/home/presentation/views/widgets/books_img.dart';
import 'package:flutter/material.dart';

class BestSellerBooksItemLeftSide extends StatelessWidget {
  const BestSellerBooksItemLeftSide({
    super.key,
    required this.bookImg,
  });
  final String bookImg;

  @override
  Widget build(BuildContext context) {
    return BooksImg(
      url: bookImg,
    );
  }
}
