import 'package:bookly/core/utils/assets.dart';
import 'package:bookly/core/widgets/error_text.dart';
import 'package:bookly/core/widgets/loading_indicator.dart';
import 'package:bookly/features/home/presentation/view_model/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly/features/home/presentation/views/widgets/books_img.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeaturedBooksListBuilder extends StatelessWidget {
  const FeaturedBooksListBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
        if (state is FeaturedBooksSuccess) {
          return ListView.builder(
            physics: const BouncingScrollPhysics(),
            itemCount: state.books.length,
            padding: const EdgeInsets.only(left: 30),
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(right: 15),
                child: BooksImg(
                  url: state.books[index].volumeInfo.imageLinks == null
                      ? Asset.kOnlineImg
                      : state.books[index].volumeInfo.imageLinks!.thumbnail!,
                ),
              );
            },
          );
        } else if (state is FeaturedBooksFailure) {
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
