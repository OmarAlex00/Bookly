import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/home/presentation/view_model/similar_books_cubit/similar_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/widgets/error_text.dart';
import '../../../../../core/widgets/loading_indicator.dart';
import 'books_img.dart';

class OtherBooksListBuilder extends StatelessWidget {
  const OtherBooksListBuilder({super.key, required this.curBook});
  final BookModel curBook;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
      builder: (context, state) {
        if (state is SimilarBooksSuccess) {
          return ListView.builder(
            physics: const BouncingScrollPhysics(),
            itemCount: state.books.length,
            padding: const EdgeInsets.only(left: 30),
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              if (curBook.volumeInfo.title !=
                  state.books[index].volumeInfo.title) {
                return Padding(
                  padding: const EdgeInsets.only(right: 15),
                  child: Hero(
                    tag: '${state.books[index].tag}${state.books[index].id}',
                    child: BooksImg(
                      book: state.books[index],
                    ),
                  ),
                );
              }
              return null;
            },
          );
        } else if (state is SimilarBooksFailure) {
          return ErrorText(
            errMsg: state.errMessage,
          );
        } else {
          return const LoadingIndicator();
        }
      },
    );
  }
}
