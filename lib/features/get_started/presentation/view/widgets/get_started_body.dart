import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:quiz_minds/core/router/app_router.dart';
import 'package:quiz_minds/core/utils/assets.dart';
import 'package:quiz_minds/core/utils/text_constant.dart';
import 'package:quiz_minds/core/utils/text_style.dart';
import 'package:quiz_minds/features/get_started/presentation/view/widgets/elvated_button.dart';
import 'package:quiz_minds/features/get_started/presentation/view/widgets/outlined_text_button.dart';

class GetStartedBody extends StatelessWidget {
  const GetStartedBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Icon
            Container(
              padding: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                // color: Colors.purple,
                shape: BoxShape.circle,
              ),
              child: Image.asset(Assets.logo),
            ),
            SizedBox(height: 10),

            // App name
            Text(
              TextConstants.appName,
              style: AppTextStyles.appTitle.copyWith(fontSize: 36),
            ),
            SizedBox(height: 10),

            // Welcome message
            Text(
              TextConstants.welcomeMessage,
              textAlign: TextAlign.center,
              style: AppTextStyles.subheading,
            ),
            SizedBox(height: 10),
            Text(
              TextConstants.signInText,
              textAlign: TextAlign.center,
              style: AppTextStyles.regularText,
            ),
            SizedBox(height: 10),
            ElvatedButtonCustomWidget(
              text: TextConstants.signInButton,
              onPressed: () {
                GoRouter.of(context).push(AppRouter.kAuthintcationScreen);
              },
            ),
            SizedBox(height: 10),
            OutlinedTextButtonCustomWidget(
              onPressed: () {},
              text: TextConstants.startQuizButton,
            ),
          ],
        ),
      ),
    );
  }
}
