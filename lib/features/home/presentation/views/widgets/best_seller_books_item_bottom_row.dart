import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/presentation/views/widgets/best_seller_books_price.dart';
import 'package:bookly/features/home/presentation/views/widgets/rate_and_count.dart';
import 'package:flutter/material.dart';

class BestSellerBooksItemBottomRow extends StatelessWidget {
  const BestSellerBooksItemBottomRow({
    super.key,
    required this.book,
  });
  final BookModel book;

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        BestSellerBooksPrice(
          price: 'Free',
        ),
        Spacer(),
        RateAndCount()
      ],
    );
  }
}
