import 'package:bookly/features/home/presentation/views/widgets/best_seller_books_list_item.dart';
import 'package:flutter/material.dart';

class BestSellerBooksList extends StatelessWidget {
  const BestSellerBooksList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      physics: const NeverScrollableScrollPhysics(),
      padding: const EdgeInsets.only(top: 5),
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.only(bottom: 15, left: 30, right: 48),
          child: BestSellerBooksListItem(),
        );
      },
    );
  }
}
