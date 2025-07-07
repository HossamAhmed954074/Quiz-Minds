import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:quiz_minds/core/utils/text_constant.dart';
import 'package:quiz_minds/features/auth/presentation/view/widgets/auth_button_custom.dart';
import 'package:quiz_minds/features/auth/presentation/view/widgets/check_boxs_remeber.dart';
import 'package:quiz_minds/features/auth/presentation/view/widgets/icon_button_custom.dart';
import 'package:quiz_minds/features/auth/presentation/view/widgets/text_field_custom.dart';

class LoginBody extends StatelessWidget {
  LoginBody({super.key});

  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Form(
        key: formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButtonCustomWidget(
                  icon: FontAwesomeIcons.google,
                  onPressed: () {},
                ),
                SizedBox(width: 40),
                IconButtonCustomWidget(
                  icon: FontAwesomeIcons.facebook,
                  onPressed: () {},
                ),
              ],
            ),
            SizedBox(height: 10),
            TextFieldCustomWidget(
              hintText: 'Email',
              controller: TextEditingController(),
            ),
            SizedBox(height: 10),
            TextFieldCustomWidget(
              hintText: 'Password',
              controller: TextEditingController(),
            ),
            SizedBox(height: 10),
            SizedBox(height: 10),
            CheckBoxRememberMe(onChanged: (p0) {}),

            SizedBox(height: 10),
            AuthButtonCustomWidget(
              text: TextConstants.logInButton,
              onPressed: () {
                if (formKey.currentState!.validate()) {}
              },
            ),
          ],
        ),
      ),
    );
  }
}
