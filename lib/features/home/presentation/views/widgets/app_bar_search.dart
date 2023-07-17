import 'package:bookly/core/utils/app_router.dart';
import 'package:bookly/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppBarSearch extends StatelessWidget {
  const AppBarSearch({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.kSearchScreenRouter);
      },
      child: Image.asset(
        Asset.kSearchIcon,
        height: 20,
        width: 20,
      ),
    );
  }
}

// -----------using font awesome icon----------------
// import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// class AppBarSearch extends StatelessWidget {
//   const AppBarSearch({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return IconButton(
//         splashRadius: 24,
//         onPressed: () {},
//         icon: const Icon(
//           FontAwesomeIcons.magnifyingGlass,
//           size: 25,
//         ));
//   }
// }
