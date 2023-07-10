import 'package:bookly/features/home/presentation/views/widgets/best_seller_books_author.dart';
import 'package:bookly/features/home/presentation/views/widgets/best_seller_books_item_bottom_row.dart';
import 'package:bookly/features/home/presentation/views/widgets/best_seller_books_title.dart';
import 'package:flutter/material.dart';

class BestSellerBooksItemRightSide extends StatelessWidget {
  const BestSellerBooksItemRightSide({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 15, bottom: 5),
      child: SizedBox(
        width: 200,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            BestSellerBooksTitle(),
            BestSellerBooksAuthor(),
            Spacer(),
            BestSellerBooksItemBottomRow(),
          ],
        ),
      ),
    );
  }
}
