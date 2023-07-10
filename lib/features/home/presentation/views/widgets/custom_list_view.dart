import 'package:bookly/features/home/presentation/views/widgets/custome_list_view_item.dart';
import 'package:flutter/material.dart';

class CustomListView extends StatelessWidget {
  const CustomListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 3,
      itemBuilder: (context, index) {
        return const CustomListViewItem();
      },
    );
  }
}
