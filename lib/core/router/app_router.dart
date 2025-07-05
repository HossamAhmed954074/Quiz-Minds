import 'package:go_router/go_router.dart';
import 'package:quiz_minds/features/get_started/presentation/view/screens/get_started_screen.dart';
import 'package:quiz_minds/features/onboarding/presentation/view/screens/onboarding_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class AppRouter {
  static const kOnboardingScreen = '/';
  static const kGetStartedScreen = '/get-started';

  static final GoRouter router = GoRouter(
    routes: [
      GoRoute(
        path: kOnboardingScreen,
        builder: (context, state) {
          SharedPreferences.getInstance().then((value) {
            if (value.getBool('onboarding') == true) {
              if (context.mounted) {
                GoRouter.of(context).go(kGetStartedScreen);
              }
            }
          });
          return const OnboardingScreen();
        },
      ),
      GoRoute(
        path: kGetStartedScreen,
        builder: (context, state) => const GetStartedScreen(),
      ),
    ],
  );
}
