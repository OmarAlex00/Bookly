import 'package:bookly/features/search/data/repos/search_repo.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../home/data/models/book_model/book_model.dart';

part 'search_cubit_state.dart';

class SearchCubitCubit extends Cubit<SearchCubitState> {
  SearchCubitCubit(this.searchRepo) : super(SearchCubitInitial());
  bool isEmpty = true;
  final SearchRepo searchRepo;
  Future<void> fetchResultsBooks({required String title}) async {
    emit(SearchCubitLoading());
    var results = await searchRepo.fetchResultsBooks(title: title);
    results.fold((failure) {
      emit(SearchCubitFailure(failure.errMessage));
    }, (success) {
      emit(SearchCubitSuccess(success));
    });
  }
}
