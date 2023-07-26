import 'package:flutter/material.dart';

class BooksDetailsContentFreePreview extends StatelessWidget {
  const BooksDetailsContentFreePreview({super.key, this.link});
  final Function()? link;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: link,
      child: Container(
        height: 48,
        width: 150,
        decoration: const BoxDecoration(
          color: Color(0xffEF8262),
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(16), bottomRight: Radius.circular(16)),
        ),
        child: const Center(
          child: Text(
            'Free Preview',
            style: TextStyle(
              fontSize: 18,
            ),
          ),
        ),
      ),
    );
  }
}
