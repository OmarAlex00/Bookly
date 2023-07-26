import 'package:bookly/core/utils/assets.dart';
import 'package:bookly/features/home/presentation/views/widgets/books_img.dart';
import 'package:flutter/material.dart';

class ResultsList extends StatelessWidget {
  const ResultsList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return const Padding(
            padding: EdgeInsets.only(bottom: 15, left: 10, right: 48),
            child: BooksImg(url: Asset.kOnlineImg));
      },
    );
  }
}
