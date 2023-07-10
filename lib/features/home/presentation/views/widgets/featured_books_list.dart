import 'package:bookly/features/home/presentation/views/widgets/featured_books_list_body.dart';
import 'package:flutter/material.dart';

class FeaturedBooksList extends StatelessWidget {
  const FeaturedBooksList({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 30),
      child: FeaturedBooksListBody(),
    );
  }
}
