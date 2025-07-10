import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:quiz_minds/core/router/app_router.dart';

class PrivacyPolicyScreen extends StatelessWidget {
  const PrivacyPolicyScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Privacy Policy')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Text(
              'Privacy Policy',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            Text(
              '1. Introduction\n\nWe take your privacy seriously. This Privacy Policy explains how we collect, use, and protect your information when you use our Quiz App.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 10),
            Text(
              '2. Data Collection\n\nWhen you use our app, we collect personal data such as your name, email, and quiz scores. We use Firebase for authentication and to store your quiz data.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 10),
            Text(
              '3. Data Usage\n\nYour personal information is used solely for providing you with the quiz experience, saving your progress, and improving the app experience. We do not sell or share your data with third parties.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 10),
            Text(
              '4. Third-Party Services\n\nWe use Firebase Authentication and Firebase Firestore to handle user accounts and store your data securely. For more details, check Firebase\'s privacy policy.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 10),
            Text(
              '5. Data Security\n\nWe follow best practices to ensure your data is protected using secure connections and encrypted storage. However, no system is completely secure, and we cannot guarantee absolute security.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 10),
            Text(
              '6. User Rights\n\nYou have the right to request access to your data, update or delete your account. You can contact us via email for any data-related requests.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 10),
            Text(
              '7. Changes to this Policy\n\nWe may update this Privacy Policy from time to time. When we do, we will notify users through the app or by updating this page.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                GoRouter.of(context).go(
                  AppRouter.kNavigationBar,
                ); // Close the privacy policy screen
              },
              child: Text('I Understand'),
            ),
          ],
        ),
      ),
    );
  }
}
