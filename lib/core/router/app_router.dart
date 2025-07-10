import 'package:go_router/go_router.dart';
import 'package:quiz_minds/core/services/auth_services.dart';
import 'package:quiz_minds/core/utils/get_it.dart';
import 'package:quiz_minds/features/auth/presentation/view/screens/auth_screen.dart';
import 'package:quiz_minds/features/auth/presentation/view_model/cubit/auth_cubit.dart';
import 'package:quiz_minds/features/get_started/presentation/view/screens/get_started_screen.dart';
import 'package:quiz_minds/features/home/presentation/view/screens/bottom_nav.dart';
import 'package:quiz_minds/features/home/presentation/view/screens/home_screen.dart';
import 'package:quiz_minds/features/onboarding/presentation/view/screens/onboarding_screen.dart';
import 'package:quiz_minds/features/profile/presentation/view/screens/privacy_policy.dart';
import 'package:quiz_minds/features/profile/presentation/view/screens/profile_screen.dart';
import 'package:quiz_minds/features/profile/presentation/view_model/cubit/profile_cubit.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

abstract class AppRouter {
  static const kOnboardingScreen = '/';
  static const kGetStartedScreen = '/get-started';
  static const kAuthintcationScreen = '/authintication';
  static const kHomeScreen = '/home';
  static const kProfileScreen = '/profile';
  static const kNavigationBar = '/navigation';
  static const kPrivacyPolicyScreen = '/privacy-policy';

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
      GoRoute(
        path: kNavigationBar,
        builder: (context, state) => const BottomNav(),
      ),
      GoRoute(
        path: kProfileScreen,
        builder: (context, state) => BlocProvider(
          create: (context) => ProfileCubit(getIt<AuthServicess>()),
          child: const ProfileScreen(),
        ),
      ),
      GoRoute(
        path: kPrivacyPolicyScreen,
        builder: (context, state) => const PrivacyPolicyScreen(),
      ),
      GoRoute(
        path: kAuthintcationScreen,
        builder: (context, state) => BlocProvider(
          create: (context) => AuthCubit(getIt<AuthServicess>()),
          child: const AuthScreen(),
        ),
      ),
    ],
  );
}
