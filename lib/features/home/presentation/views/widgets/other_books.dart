import 'package:bookly/features/home/presentation/views/widgets/other_books_list_builder.dart';
import 'package:flutter/material.dart';

class OtherBooks extends StatelessWidget {
  const OtherBooks({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.14,
      child: const OtherBooksListBuilder(),
    );
  }
}
