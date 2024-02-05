import 'package:bookly_gemy/core/utils/assets.dart';
import 'package:bookly_gemy/features/home_page/presention/views/home_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with TickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;
  // التحكم في الانيمشن الثاني
  late AnimationController animationController2;
  late Animation<Offset> slidingAnimation2;
  @override
  void initState() {
    super.initState();
    initSlidingAnimation();
    initSlidingAnimationhr();
    Future.delayed(const Duration(seconds: 2), () {
      Get.to(() => const HomeView(), transition: Transition.fade);
    });
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
    animationController2.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width * 1,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(AssetsData.logo),
              const SizedBox(
                height: 4,
              ),
              SlideTransition(
                position: slidingAnimation,
                child: const Text(
                  'Read Free Books',
                  style: TextStyle(fontSize: 12),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(
                height: 4,
              ),
              SlideTransition(
                  position: slidingAnimation2, child: const Text('GEMY'))
            ]),
      ),
    );
  }

  void initSlidingAnimation() {
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
    slidingAnimation =
        Tween<Offset>(begin: const Offset(0, 3), end: Offset.zero)
            .animate(animationController);
    animationController.forward();
  }

  void initSlidingAnimationhr() {
    animationController2 =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
    slidingAnimation2 =
        Tween<Offset>(begin: const Offset(3, 0), end: Offset.zero)
            .animate(animationController);
    animationController.forward();
  }
}
