import 'package:bookly/core/utils/app_router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CartIcon extends StatelessWidget {
  const CartIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        GoRouter.of(context).push(AppRouter.kHomeScreenRouter);
      },
      icon: const Icon(
        Icons.home,
        size: 30,
      ),
    );
  }
}
