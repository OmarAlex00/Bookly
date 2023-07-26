import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/presentation/views/widgets/books_details_content.dart';
import 'package:bookly/features/home/presentation/views/widgets/details_app_bar.dart';
import 'package:flutter/material.dart';

class BooksDetailsScreenBody extends StatelessWidget {
  const BooksDetailsScreenBody({super.key, required this.book});
  final BookModel book;
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 32),
            child: Column(
              children: [
                const DetailsAppBar(),
                Expanded(
                    child: BooksDetailsContent(
                  book: book,
                )),
              ],
            ),
          ),
        )
      ],
    );
  }
}
