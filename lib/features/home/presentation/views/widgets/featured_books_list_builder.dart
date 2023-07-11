import 'package:bookly/features/home/presentation/views/widgets/featured_books_list_item.dart';
import 'package:flutter/material.dart';

class FeaturedBooksListBuilder extends StatelessWidget {
  const FeaturedBooksListBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.only(left: 30),
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.only(right: 15),
          child: FeaturedBooksItem(),
        );
      },
    );
  }
}
