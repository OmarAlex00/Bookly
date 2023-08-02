import 'package:bookly/core/widgets/error_text.dart';
import 'package:bookly/core/widgets/loading_indicator.dart';
import 'package:bookly/features/home/presentation/view_model/best_seller_books_cubit/best_seller_books_cubit.dart';
import 'package:bookly/features/home/presentation/views/widgets/best_seller_books_list_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BestSellerBooksList extends StatelessWidget {
  const BestSellerBooksList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BestSellerBooksCubit, BestSellerBooksState>(
      builder: (context, state) {
        if (state is BestSellerBooksSuccess) {
          return ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: state.books.length,
            padding: const EdgeInsets.only(top: 5, bottom: 20),
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 15, left: 30, right: 48),
                child: BestSellerBooksListItem(
                  book: state.books[index],
                  tag: 'Featured',
                ),
              );
            },
          );
        } else if (state is BestSellerBooksFailure) {
          return ErrorText(errMsg: state.errMessage);
        } else {
          return const LoadingIndicator();
        }
      },
    );
  }
}
