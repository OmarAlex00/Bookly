import 'package:bookly/core/utils/assets.dart';
import 'package:bookly/core/utils/constants.dart';
import 'package:bookly/features/home/presentation/views/screen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'sliding_text.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> sliding;
  late CurvedAnimation curve;
  @override
  void initState() {
    super.initState();
    startSplashAnimation();
    navigateToHomeScreen();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(Asset.kLogo),
        const SizedBox(height: 5),
        SlidingText(
          sliding: sliding,
          controller: animationController,
        ),
      ],
    );
  }

  void startSplashAnimation() {
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
    curve = CurvedAnimation(parent: animationController, curve: Curves.easeIn);
    sliding = Tween<Offset>(begin: const Offset(0, 3), end: Offset.zero)
        .animate(curve);
    animationController.forward();
  }

  void navigateToHomeScreen() {
    Future.delayed(Duration(seconds: 2), () {
      Get.to(() => const HomeScreen(),
          duration: ConstantVars.kTransitionDuration,
          transition: Transition.fade);
    });
  }
}
