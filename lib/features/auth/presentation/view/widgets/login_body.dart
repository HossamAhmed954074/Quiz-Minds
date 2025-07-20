import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:quiz_minds/core/quizes/quiz.dart';
import 'package:quiz_minds/core/router/app_router.dart';
import 'package:quiz_minds/core/utils/text_constant.dart';
import 'package:quiz_minds/core/widgets/show_circle_indecator.dart';
import 'package:quiz_minds/core/widgets/show_snak_faluire.dart';
import 'package:quiz_minds/core/widgets/show_snak_sucess.dart';
import 'package:quiz_minds/features/auth/presentation/view/widgets/auth_button_custom.dart';

import 'package:quiz_minds/features/auth/presentation/view/widgets/icon_button_custom.dart';
import 'package:quiz_minds/features/auth/presentation/view/widgets/text_field_custom.dart';
import 'package:quiz_minds/features/auth/presentation/view_model/cubit/auth_cubit.dart';

class LoginBody extends StatefulWidget {
  const LoginBody({super.key});

  @override
  State<LoginBody> createState() => _LoginBodyState();
}

class _LoginBodyState extends State<LoginBody> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
    formKey.currentState?.dispose();
  }

  void logIn() {
    BlocProvider.of<AuthCubit>(context).logIn(
      email: emailController.text.trim(),
      password: passwordController.text.trim(),
    );
  }

   googleAuth() {
     BlocProvider.of<AuthCubit>(context).googleAuth();
  }

  void clear() {
    emailController.clear();
    passwordController.clear();
  }
void navigateTo() async{
  await Future.delayed(const Duration(seconds: 1));
  if (mounted) {
    GoRouter.of(context).go(AppRouter.kNavigationBar);
  }
}
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {
        if (state is AuthSuccess)  {
          showSnakBarSuccess(context, 'Login Success');
          clear();
          navigateTo();
        } else if (state is AuthFailure) {
          showSnakBarFaluire(context, state.message.faliure());
        } else if (state is GoogleAuthFailure) {
          showSnakBarFaluire(context, state.message);
        }
      },
      builder: (context, state) {
        return Stack(
          children: [
            Padding(
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
                          onPressed: () {
                             googleAuth();
                          },
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    TextFieldCustomWidget(
                      hintText: 'Email',
                      controller: emailController,
                    ),
                    SizedBox(height: 10),
                    TextFieldCustomWidget(
                      hintText: 'Password',
                      controller: passwordController,
                    ),
                    SizedBox(height: 10),
                  //  CheckBoxRememberMe(onChanged: (p0) {}),
                    SizedBox(height: 10),
                    AuthButtonCustomWidget(
                      text: TextConstants.logInButton,
                      onPressed: () {            
                        if (formKey.currentState!.validate()) {
                          logIn();
                        }
                      },
                    ),
                  ],
                ),
              ),
            ),
            if (state is AuthLoading) circleIndeactorCustom(context),
          ],
        );
      },
    );
  }
}
