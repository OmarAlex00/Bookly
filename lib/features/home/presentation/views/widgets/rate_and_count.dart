import 'package:flutter/material.dart';

import '../../../../../core/utils/constants.dart';
import 'books_count.dart';
import 'books_rate.dart';

class RateAndCount extends StatelessWidget {
  const RateAndCount({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        ConstantVars.kRateIcon,
        BooksRate(),
        BooksCount(),
      ],
    );
  }
}
