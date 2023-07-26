import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/assets.dart';
import '../../../../../core/widgets/loading_indicator.dart';

class DetailImg extends StatelessWidget {
  const DetailImg({super.key, required this.book});
  final BookModel book;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: AspectRatio(
        aspectRatio: 0.67,
        child: CachedNetworkImage(
          imageUrl: book.volumeInfo.imageLinks?.thumbnail ?? Asset.kOnlineImg,
          fit: BoxFit.fill,
          errorWidget: (context, url, error) => const Icon(Icons.error),
          progressIndicatorBuilder: (context, url, progress) =>
              const LoadingIndicator(),
        ),
      ),
    );
  }
}
