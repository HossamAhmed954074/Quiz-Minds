import 'package:flutter/material.dart';
import 'package:quiz_minds/core/utils/text_constant.dart';
import 'package:quiz_minds/features/auth/presentation/view/widgets/auth_button_custom.dart';
import 'package:quiz_minds/features/auth/presentation/view/widgets/text_field_custom.dart';

class RessetPassord extends StatelessWidget {
  const RessetPassord({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          SizedBox(height: 30),
          Text(
            'Reset Password',
            style: TextStyle(
              fontSize: 24,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 40),
          TextFieldCustomWidget(
            hintText: 'Email',
            controller: TextEditingController(),
          ),
          SizedBox(height: 15),
         
          SizedBox(height: 50),
          AuthButtonCustomWidget(
            text: TextConstants.ressetButton,
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
