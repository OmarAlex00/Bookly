import 'package:bookly/features/home/presentation/views/widgets/best_seller_books_list.dart';
import 'package:bookly/features/home/presentation/views/widgets/best_seller_title.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:bookly/features/home/presentation/views/widgets/featured_books_list.dart';
import 'package:flutter/material.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomAppBar(),
        FeaturedBooksList(),
        BestSellerTitle(),
        BestSellerBooksList(),
      ],
    );
  }
}