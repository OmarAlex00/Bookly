import 'package:bookly/features/home/presentation/views/widgets/featured_books_list_builder.dart';
import 'package:flutter/material.dart';

class FeaturedBooksListBody extends StatelessWidget {
  const FeaturedBooksListBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .28,
      child: const FeaturedBooksListBuilder(),
    );
  }
}
