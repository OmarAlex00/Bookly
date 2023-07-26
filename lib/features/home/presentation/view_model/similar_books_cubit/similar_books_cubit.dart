import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/models/book_model/book_model.dart';
import '../../../data/repos/home_repo.dart';

part 'similar_books_state.dart';

class SimilarBooksCubit extends Cubit<SimilarBooksState> {
  SimilarBooksCubit(this.homeRepo) : super(SimilarBooksInitial());
  final HomeRepo homeRepo;
  Future<void> fetchSimilarBooks({required String category}) async {
    emit(SimilarBooksLoading());
    var results = await homeRepo.fetchSimilarBooks(categoryName: category);
    results.fold((failure) {
      emit(SimilarBooksFailure(failure.errMessage));
    }, (success) {
      emit(SimilarBooksSuccess(success));
    });
  }
}
