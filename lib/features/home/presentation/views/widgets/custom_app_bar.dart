import 'package:bookly/features/home/presentation/views/widgets/app_bar_row.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 45, left: 30, right: 30, bottom: 30),
      child: AppBarRow(),
    );
  }
}
