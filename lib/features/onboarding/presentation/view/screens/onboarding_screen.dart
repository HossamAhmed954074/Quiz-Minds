import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:quiz_minds/core/router/app_router.dart';
import 'package:quiz_minds/features/onboarding/presentation/view/widgets/intro_component.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController();
  int currentPage = 0;
  List<Widget> pages = [
    const IntroComponent(
      imagePath: 'assets/images/onboarding/onbaording_1.png',
    ),
    const IntroComponent(
      imagePath: 'assets/images/onboarding/onbaording_2.png',
    ),
    const IntroComponent(
      imagePath: 'assets/images/onboarding/onbaording_3.png',
    ),
  ];

  void _skip() {
    _pageController.animateToPage(
      pages.length - 1,
      duration: Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }

  void _onNext() {
    _pageController.nextPage(
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeIn,
    );
  }

  void _onGetStarted() async {
    GoRouter.of(context).go(AppRouter.kGetStartedScreen);
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setBool('onboarding', true);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF5F5F5),
      body: SafeArea(
        child: Stack(
          children: [
            PageView.builder(
              controller: _pageController,
              onPageChanged: (value) {
                setState(() {
                  currentPage = value;
                });
              },
              physics: const BouncingScrollPhysics(),
              itemBuilder: (context, index) => pages[index],
              itemCount: pages.length,
            ),
            currentPage != pages.length - 1
                ? Positioned(
                    bottom: 40,
                    left: 20,
                    child: TextButton(
                      onPressed: _skip,
                      child: Text(
                        'Skip',
                        style: TextStyle(
                          color: Colors.red,
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  )
                : SizedBox.shrink(),
            currentPage != pages.length - 1
                ? Positioned(
                    bottom: 40,
                    right: 20,
                    child: TextButton(
                      onPressed: () {
                        _onNext();
                        setState(() {
                          currentPage++;
                        });
                      },
                      child: Text(
                        'Next',
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  )
                : Positioned(
                    bottom: 40,
                    right: 20,
                    child: TextButton(
                      onPressed: _onGetStarted,
                      child: Text(
                        'Get Started',
                        style: TextStyle(
                          color: Colors.green,
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
            Positioned(
              left: 0,
              right: 0,
              bottom: 60,
              child: Center(
                child: SmoothPageIndicator(
                  controller: _pageController,
                  count: pages.length,
                  effect: const WormEffect(
                    dotColor: Colors.grey,
                    activeDotColor: Colors.blue,
                    dotHeight: 12,
                    dotWidth: 12,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
