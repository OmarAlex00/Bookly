import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../data/models/book_model/book_model.dart';
import '../../../data/repos/home_repo.dart';

part 'similar_books_state.dart';

class SimilarBooksCubit extends Cubit<SimilarBooksState> {
  SimilarBooksCubit(this.homeRepo) : super(SimilarBooksInitial());
  final HomeRepo homeRepo;
  Future<void> fetchFeaturedBooks(String category) async {
    emit(SimilarBooksLoading());
    var results = await homeRepo.fetchSimilarBooks(categoryName: category);
    results.fold((failure) {
      emit(SimilarBooksFailure(failure.errMessage));
    }, (success) {
      emit(SimilarBooksSuccess(success));
    });
  }
}
