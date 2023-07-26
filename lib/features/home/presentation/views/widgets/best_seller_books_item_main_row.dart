import 'package:bookly/core/utils/assets.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/presentation/views/widgets/best_seller_books_item_left_side.dart';
import 'package:bookly/features/home/presentation/views/widgets/best_seller_books_item_right_side.dart';
import 'package:flutter/material.dart';

class BestSellerBooksItemMainRow extends StatelessWidget {
  const BestSellerBooksItemMainRow({
    super.key,
    required this.book,
  });
  final BookModel book;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        BestSellerBooksItemLeftSide(
          bookImg: book.volumeInfo.imageLinks == null
              ? Asset.kOnlineImg
              : book.volumeInfo.imageLinks!.smallThumbnail!,
        ),
        const SizedBox(
          width: 20,
        ),
        BestSellerBooksItemRightSide(
          book: book,
        )
      ],
    );
  }
}
