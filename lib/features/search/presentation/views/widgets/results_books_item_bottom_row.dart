import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/search/presentation/views/widgets/results_books_price.dart';

import 'package:flutter/material.dart';

import '../../../../home/presentation/views/widgets/rate_and_count.dart';

class ResultsItemBottomRow extends StatelessWidget {
  const ResultsItemBottomRow({
    super.key,
    required this.book,
  });
  final BookModel book;

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        ResultsBooksPrice(
          price: 'Free',
        ),
        Spacer(),
        RateAndCount()
      ],
    );
  }
}
