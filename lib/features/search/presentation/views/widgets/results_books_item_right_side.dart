import 'package:bookly/features/search/presentation/views/widgets/results_books_author.dart';
import 'package:bookly/features/search/presentation/views/widgets/results_books_item_bottom_row.dart';
import 'package:bookly/features/search/presentation/views/widgets/results_books_title.dart';
import 'package:flutter/material.dart';

import '../../../../home/data/models/book_model/book_model.dart';

class ResultsItemRightSide extends StatelessWidget {
  const ResultsItemRightSide({
    super.key,
    required this.book,
  });
  final BookModel book;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15, bottom: 10),
      child: SizedBox(
        width: MediaQuery.of(context).size.width * .48,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ResultsBooksTitle(
              bookTitle: book.volumeInfo.title ?? '',
            ),
            ResultsAuthor(
              bookAuthor: book.volumeInfo.authors?[0] ?? '',
            ),
            const Spacer(),
            ResultsItemBottomRow(
              book: book,
            ),
          ],
        ),
      ),
    );
  }
}
