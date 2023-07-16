import 'package:bookly/features/home/presentation/views/widgets/books_details_content.dart';
import 'package:bookly/features/home/presentation/views/widgets/details_app_bar.dart';
import 'package:flutter/material.dart';

class BooksDetailsScreenBody extends StatelessWidget {
  const BooksDetailsScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        DetailsAppBar(),
        BooksDetailsContent(),
      ],
    );
  }
}
