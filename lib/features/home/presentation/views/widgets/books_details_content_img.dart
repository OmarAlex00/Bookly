import 'package:bookly/features/home/presentation/views/widgets/books_img.dart';
import 'package:flutter/material.dart';

class BooksDetailsContentImg extends StatelessWidget {
  const BooksDetailsContentImg({super.key, required this.url});
  final String url;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: MediaQuery.of(context).size.height * .32,
        child: BooksImg(
          url: url,
        ));
  }
}
