import 'package:bookly/core/utils/assets.dart';

import 'package:bookly/features/search/presentation/view_model/cubit/search_cubit_cubit.dart';
import 'package:bookly/features/search/presentation/views/widgets/results_books_list.dart';
import 'package:bookly/features/search/presentation/views/widgets/search_result.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    String searchValue = '';
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextField(
            onChanged: (value) {
              searchValue = value;
            },
            onSubmitted: (value) {
              if (value.isNotEmpty) {
                BlocProvider.of<SearchCubitCubit>(context).isEmpty = false;
                BlocProvider.of<SearchCubitCubit>(context)
                    .fetchResultsBooks(title: searchValue);
              } else {
                BlocProvider.of<SearchCubitCubit>(context).isEmpty = true;
              }
            },
            decoration: InputDecoration(
                enabledBorder: borderStyle(),
                hintText: 'Search',
                focusedBorder: borderStyle(),
                suffixIcon: IconButton(
                  onPressed: () {
                    if (searchValue.isNotEmpty) {
                      BlocProvider.of<SearchCubitCubit>(context).isEmpty =
                          false;
                      BlocProvider.of<SearchCubitCubit>(context)
                          .fetchResultsBooks(title: searchValue);
                    } else {
                      BlocProvider.of<SearchCubitCubit>(context).isEmpty = true;
                    }
                  },
                  icon: Opacity(
                      opacity: 0.5, child: Image.asset(Asset.kSearchIcon)),
                )),
          ),
          const SearchResult(),
          const Expanded(child: ResultsBooksList())
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
