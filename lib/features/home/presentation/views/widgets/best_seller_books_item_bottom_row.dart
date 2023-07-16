import 'package:bookly/features/home/presentation/views/widgets/best_seller_books_price.dart';
import 'package:bookly/features/home/presentation/views/widgets/rate_and_count.dart';
import 'package:flutter/material.dart';

class BestSellerBooksItemBottomRow extends StatelessWidget {
  const BestSellerBooksItemBottomRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [BestSellerBooksPrice(), Spacer(), RateAndCount()],
    );
  }
}
