import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/models/book_model/book_model.dart';
import '../../../data/repos/home_repo.dart';

part 'best_seller_books_state.dart';

class BestSellerBooksCubit extends Cubit<BestSellerBooksState> {
  BestSellerBooksCubit(this.homeRepo) : super(BestSellerBooksInitial());
  final HomeRepo homeRepo;
  Future<void> fetchBestSellerBooks() async {
    emit(FeaturedBooksLoading());
    var results = await homeRepo.fetchBestSellerBooks();
    results.fold((failure) {
      emit(BestSellerBooksFailure(failure.errMessage));
    }, (success) {
      emit(BestSellerBooksSuccess(success));
    });
  }
}
