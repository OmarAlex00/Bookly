import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/presentation/view_model/similar_books_cubit/similar_books_cubit.dart';
import 'package:bookly/features/home/presentation/views/widgets/books_details_screen_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BooksDetailsScreen extends StatefulWidget {
  const BooksDetailsScreen({super.key, required this.book});
  final BookModel book;
  @override
  State<BooksDetailsScreen> createState() => _BooksDetailsScreenState();
}

class _BooksDetailsScreenState extends State<BooksDetailsScreen> {
  @override
  void initState() {
    BlocProvider.of<SimilarBooksCubit>(context)
        .fetchSimilarBooks(category: widget.book.volumeInfo.categories![0]);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BooksDetailsScreenBody(
        book: widget.book,
      ),
    );
  }
}
