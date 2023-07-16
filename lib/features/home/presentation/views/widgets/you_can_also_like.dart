import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class YouCanAlsoLike extends StatelessWidget {
  const YouCanAlsoLike({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Row(
        children: [
          Text(
            'You can also like',
            style: Styles.youCanAlsoSee,
          )
        ],
      ),
    );
  }
}
