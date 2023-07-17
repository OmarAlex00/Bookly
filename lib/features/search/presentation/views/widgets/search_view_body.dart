import 'package:bookly/core/utils/assets.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      child: Column(
        children: [
          TextField(
            decoration: InputDecoration(
                enabledBorder: borderStyle(),
                hintText: 'Search',
                focusedBorder: borderStyle(),
                suffixIcon: IconButton(
                  onPressed: () {},
                  icon: Opacity(
                      opacity: 0.5, child: Image.asset(Asset.kSearchIcon)),
                )),
          ),
        ],
      ),
    );
  }

  OutlineInputBorder borderStyle() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
        borderSide: const BorderSide(color: Colors.white));
  }
}
