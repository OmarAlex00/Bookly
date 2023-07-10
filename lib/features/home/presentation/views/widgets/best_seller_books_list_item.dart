import 'package:bookly/features/home/presentation/views/widgets/best_seller_books_item_main_row.dart';

import 'package:flutter/material.dart';

class BestSellerBooksListItem extends StatelessWidget {
  const BestSellerBooksListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 125,
      child: BestSellerBooksItemMainRow(),
    );
  }
}
