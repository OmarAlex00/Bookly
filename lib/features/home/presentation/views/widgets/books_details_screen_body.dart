import 'package:bookly/features/home/presentation/views/widgets/books_details_content.dart';
import 'package:bookly/features/home/presentation/views/widgets/details_app_bar.dart';
import 'package:bookly/features/home/presentation/views/widgets/rate_and_count.dart';
import 'package:bookly/features/home/presentation/views/widgets/you_can_also_like.dart';
import 'package:flutter/material.dart';

import 'books_details_content_author.dart';
import 'books_details_content_img.dart';
import 'books_details_content_name.dart';
import 'books_details_content_pricing_section.dart';
import 'other_books.dart';

class BooksDetailsScreenBody extends StatelessWidget {
  const BooksDetailsScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: EdgeInsets.only(bottom: 32),
            child: Column(
              children: [
                DetailsAppBar(),
                Expanded(child: BooksDetailsContent()),
              ],
            ),
          ),
        )
      ],
    );
  }
}
