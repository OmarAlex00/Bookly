import 'package:bookly/core/utils/assets.dart';
import 'package:bookly/features/home/presentation/views/widgets/best_seller_books_list%20copy.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextField(
            decoration: InputDecoration(
                enabledBorder: borderStyle(),
                hintText: 'Search',
                focusedBorder: borderStyle(),
                suffixIcon: IconButton(
                  onPressed: () {},
                  icon: Opacity(
                      opacity: 0.5, child: Image.asset(Asset.kSearchIcon)),
                )),
          ),
          const SearchResult(),
          const Expanded(child: ResultsList())
        ],
      ),
    );
  }

  OutlineInputBorder borderStyle() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
        borderSide: const BorderSide(color: Colors.white));
  }
}

class SearchResult extends StatelessWidget {
  const SearchResult({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 30),
      child: Text(
        'Search Results',
        style: Styles.youCanAlsoSee,
      ),
    );
  }
}
