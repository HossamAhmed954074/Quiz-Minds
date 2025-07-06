import 'package:flutter/material.dart';
import 'package:quiz_minds/features/get_started/presentation/view/widgets/get_started_body.dart';

class GetStartedScreen extends StatelessWidget {
  const GetStartedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(child: GetStartedBody()));
  }
}
