import 'package:bookly/core/utils/app_router.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/presentation/views/widgets/best_seller_books_item_main_row.dart';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BestSellerBooksListItem extends StatelessWidget {
  const BestSellerBooksListItem(
      {super.key, required this.book, required this.tag});
  final BookModel book;
  final String tag;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context)
            .push(AppRouter.kBooksDetailsScreenRouter, extra: book);
      },
      child: SizedBox(
        height: 125,
        child: BestSellerBooksItemMainRow(
          book: book,
        ),
      ),
    );
  }
}
