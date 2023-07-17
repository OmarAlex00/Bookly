import 'package:flutter/material.dart';

import 'featured_books_list_builder.dart';

class OtherBooks extends StatelessWidget {
  const OtherBooks({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.14,
      child: const FeaturedBooksListBuilder(),
    );
  }
}
