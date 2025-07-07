import 'package:flutter/material.dart';

import 'package:quiz_minds/features/auth/presentation/view/screens/auth_body.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(child: AuthBody()));
  }
}
