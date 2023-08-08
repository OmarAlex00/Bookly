import 'package:bookly/core/utils/constants.dart';
import 'package:bookly/core/widgets/error_text.dart';
import 'package:bookly/core/widgets/loading_indicator.dart';
import 'package:bookly/features/search/presentation/view_model/cubit/search_cubit_cubit.dart';
import 'package:bookly/features/search/presentation/views/widgets/results_books_list_item.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ResultsBooksList extends StatelessWidget {
  const ResultsBooksList({super.key});

  @override
  Widget build(BuildContext context) {
    bool isEmpty = true;
    return BlocConsumer<SearchCubitCubit, SearchCubitState>(
      listener: (context, state) {
        isEmpty = BlocProvider.of<SearchCubitCubit>(context).isEmpty;
      },
      builder: (context, state) {
        if (isEmpty) {
          return const Padding(
              padding: EdgeInsets.only(bottom: 15, left: 10, right: 48),
              child: Text('no results'));
        } else {
          if (state is SearchCubitSuccess) {
            return ListView.builder(
              shrinkWrap: true,
              itemCount: state.books.length,
              padding: const EdgeInsets.only(top: 5, bottom: 20),
              itemBuilder: (context, index) {
                return Padding(
                  padding:
                      const EdgeInsets.only(bottom: 15, left: 10, right: 48),
                  child: ResultsListItem(
                    book: state.books[index],
                    tag: ConstantsTags.kResults,
                  ),
                );
              },
            );
          } else if (state is SearchCubitFailure) {
            return ErrorText(errMsg: state.errMessage);
          } else {
            return const LoadingIndicator();
          }
        }
      },
    );
  }
}
