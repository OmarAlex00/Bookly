import 'package:bookly/core/widgets/loading_indicator.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class BooksImg extends StatelessWidget {
  const BooksImg({
    super.key,
    required this.url,
  });
  final String url;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: AspectRatio(
        aspectRatio: 0.67,
        child: CachedNetworkImage(
          imageUrl: url,
          fit: BoxFit.fill,
          errorWidget: (context, url, error) => const Icon(Icons.error),
          progressIndicatorBuilder: (context, url, progress) =>
              const LoadingIndicator(),
        ),
      ),
    );
  }
}
