import 'package:bookly/core/errors/failure.dart';
import 'package:bookly/core/utils/api_service.dart';
import 'package:bookly/features/home/data/models/book_model/book_model.dart';
import 'package:bookly/features/search/data/repos/search_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../../../core/utils/constants.dart';

class SearchRepoImp implements SearchRepo {
  final APIService apiService;

  SearchRepoImp(this.apiService);
  @override
  Future<Either<Failure, List<BookModel>>> fetchResultsBooks(
      {required String title}) async {
    try {
      List<BookModel> books = [];
      Map<String, dynamic> data = await apiService
          .get('volumes?Filtering=free-ebooks&Sorting=relevance&q=$title');
      for (var element in data['items']) {
        books.add(BookModel.fromJson(element, ConstantsTags.kResults));
      }
      return right(books);
    } catch (e) {
      if (e is DioException) return left(ServerFailure.fromDioException(e));
      return left(ServerFailure(e.toString()));
    }
  }
}
