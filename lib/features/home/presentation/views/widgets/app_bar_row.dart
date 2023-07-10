import 'package:flutter/material.dart';

import 'app_bar_logo.dart';
import 'app_bar_search.dart';

class AppBarRow extends StatelessWidget {
  const AppBarRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [AppBarLogo(), Spacer(), AppBarSearch()],
    );
  }
}
