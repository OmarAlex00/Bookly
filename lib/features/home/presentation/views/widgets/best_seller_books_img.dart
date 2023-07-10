import 'package:bookly/core/utils/assets.dart';
import 'package:flutter/material.dart';

class BestSellerBooksImg extends StatelessWidget {
  const BestSellerBooksImg({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 0.66,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          image: const DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(Asset.kPlaceHolderImg),
          ),
        ),
      ),
    );
  }
}
