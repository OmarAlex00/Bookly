import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/search/presentation/views/widgets/results_books_item_left_side.dart';
import 'package:bookly/features/search/presentation/views/widgets/results_books_item_right_side.dart';

import 'package:flutter/material.dart';

class ResultsItemMainRow extends StatelessWidget {
  const ResultsItemMainRow({
    super.key,
    required this.book,
  });
  final BookModel book;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ResultsItemLeftSide(
          book: book,
        ),
        const SizedBox(
          width: 20,
        ),
        ResultsItemRightSide(
          book: book,
        )
      ],
    );
  }
}
