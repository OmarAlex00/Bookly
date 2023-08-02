import 'package:bookly/core/utils/constants.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/presentation/views/widgets/details_img.dart';
import 'package:flutter/material.dart';

class BooksDetailsContentImg extends StatefulWidget {
  const BooksDetailsContentImg({super.key, required this.book});
  final BookModel book;

  @override
  State<BooksDetailsContentImg> createState() => _BooksDetailsContentImgState();
}

class _BooksDetailsContentImgState extends State<BooksDetailsContentImg> {
  String tags = '';

  @override
  Widget build(BuildContext context) {
    if (widget.book.tag == ConstantsTags.kBestSellerTags) {
      tags = '${ConstantsTags.kBestSellerTags}${widget.book.id}';
    } else if (widget.book.tag == ConstantsTags.kFeaturedTags) {
      tags = '${ConstantsTags.kFeaturedTags}${widget.book.id}';
    } else if (widget.book.tag == ConstantsTags.kOthersTags) {
      tags = '${ConstantsTags.kOthersTags}${widget.book.id}';
    }
    return SizedBox(
        height: MediaQuery.of(context).size.height * .32,
        child: Hero(
          tag: tags,
          child: DetailImg(
            book: widget.book,
          ),
        ));
  }
}
