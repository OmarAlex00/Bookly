import 'package:bookly/features/home/presentation/views/widgets/best_seller_books_count.dart';
import 'package:bookly/features/home/presentation/views/widgets/best_seller_books_rate.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/constants.dart';

class BooksDetailsContentRateAndCount extends StatelessWidget {
  const BooksDetailsContentRateAndCount({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ConstantVars.kRateIcon,
        BestSellerBooksRate(),
        SizedBox(
          width: 2,
        ),
        BestSellerBooksCount()
      ],
    );
  }
}
