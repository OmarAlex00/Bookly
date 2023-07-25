import 'package:flutter/material.dart';

class BooksImg extends StatelessWidget {
  const BooksImg({
    super.key,
    required this.url,
  });
  final String url;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 0.67,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          image: DecorationImage(
            fit: BoxFit.fill,
            image: NetworkImage(url),
          ),
        ),
      ),
    );
  }
}
