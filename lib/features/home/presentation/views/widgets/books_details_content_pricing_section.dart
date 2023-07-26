import 'package:bookly/core/utils/assets.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/presentation/views/widgets/books_details_content_free_preview.dart';
import 'package:bookly/features/home/presentation/views/widgets/books_details_content_price.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BooksDetailsContentPricingSection extends StatelessWidget {
  const BooksDetailsContentPricingSection({super.key, required this.book});
  final BookModel book;
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(16)),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          const BooksDetailsContentPrice(),
          BooksDetailsContentFreePreview(link: () async {
            Uri url =
                Uri.parse(book.volumeInfo.previewLink ?? Asset.kOnlineImg);
            if (await canLaunchUrl(url)) {
              await launchUrl(url);
            }
          })
        ]));
  }
}
