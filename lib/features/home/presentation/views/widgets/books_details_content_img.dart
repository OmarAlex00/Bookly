import 'package:bookly/core/utils/assets.dart';
import 'package:flutter/material.dart';

class BooksDetailsContentImg extends StatelessWidget {
  const BooksDetailsContentImg({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .32,
      child: AspectRatio(
          aspectRatio: 0.67,
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                image: const DecorationImage(
                    image: AssetImage(Asset.kPlaceHolderImg),
                    fit: BoxFit.fill)),
          )),
    );
  }
}
