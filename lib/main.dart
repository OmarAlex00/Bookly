import 'package:bookly/core/utlis/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'features/splash/presentation/views/splash_view.dart';

void main() {
  runApp(const Bookly());
}

class Bookly extends StatelessWidget {
  const Bookly({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData().copyWith(
        scaffoldBackgroundColor: ConstantsStuff.kPrimaryColor,
      ),
      home: const SplashView(),
    );
  }
}
