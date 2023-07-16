import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class XIcon extends StatelessWidget {
  const XIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {
          GoRouter.of(context).pop();
        },
        icon: const Icon(
          Icons.close_sharp,
          size: 35,
        ));
  }
}
