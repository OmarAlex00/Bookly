import 'package:bookly/features/home/presentation/views/widgets/books_details_screen_body.dart';
import 'package:flutter/material.dart';

class BooksDetailsScreen extends StatelessWidget {
  const BooksDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: BooksDetailsScreenBody(),
    );
  }
}
