import 'package:bookly/features/home/presentation/views/widgets/best_seller_books_item_left_side.dart';
import 'package:bookly/features/home/presentation/views/widgets/best_seller_books_item_right_side.dart';
import 'package:flutter/material.dart';

class BestSellerBooksItemMainRow extends StatelessWidget {
  const BestSellerBooksItemMainRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        BestSellerBooksItemLeftSide(),
        SizedBox(
          width: 20,
        ),
        BestSellerBooksItemRightSide()
      ],
    );
  }
}
