
import 'package:flutter/material.dart';
import 'package:quiz_minds/core/utils/text_constant.dart';
import 'package:quiz_minds/features/auth/presentation/view/widgets/auth_button_custom.dart';
import 'package:quiz_minds/features/auth/presentation/view/widgets/text_field_custom.dart';

class RegisterBody extends StatelessWidget {
  const RegisterBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Column(
        
        children: [
          SizedBox(height: 30),
          TextFieldCustomWidget(
            hintText: 'Name',
            controller: TextEditingController(),
          ),
         
          SizedBox(height: 15),
          TextFieldCustomWidget(
            hintText: 'Email',
            controller: TextEditingController(),
          ),
          SizedBox(height: 15),
          TextFieldCustomWidget(
            hintText: 'Password',
            controller: TextEditingController(),
          ),
         
     
          SizedBox(height: 40),
          AuthButtonCustomWidget(
            text: TextConstants.registerButton,
            onPressed: () {},
          ),
        
        ],
      ),
    );
  }
}