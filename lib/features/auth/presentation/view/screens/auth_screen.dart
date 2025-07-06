import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:quiz_minds/core/utils/assets.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(child: AuthBody()));
  }
}

class AuthBody extends StatefulWidget {
  const AuthBody({super.key});

  @override
  State<AuthBody> createState() => _AuthBodyState();
}

class _AuthBodyState extends State<AuthBody>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(Assets.authBackGround),
              fit: BoxFit.fill,
            ),
          ),
        ),
        Container(color: Colors.black.withAlpha(-100)),
        Center(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
              child: Container(
                height: 430,
                width: 300,
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: Colors.white.withOpacity(0.6),
                    width: 1,
                  ),
                ),
                child: Column(
                  children: [
                    TabBarCustomWidget(tabController: _tabController),
                    Expanded(
                      child: TabBarView(
                        controller: _tabController,
                        children: [
                          LoginBody(),
                          Center(child: Text('Register')),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class LoginBody extends StatelessWidget {
  const LoginBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
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
          CheckBoxRememberMe(onChanged: (p0) {}),
          SizedBox(height: 10),
          ElevatedButton(onPressed: () {}, child: Text('Login')),
        ],
      ),
    );
  }
}

class CheckBoxRememberMe extends StatefulWidget {
  const CheckBoxRememberMe({super.key, required this.onChanged});

  final Function(bool) onChanged;

  @override
  State<CheckBoxRememberMe> createState() => _CheckBoxRememberMeState();
}

class _CheckBoxRememberMeState extends State<CheckBoxRememberMe> {
  bool value = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          activeColor: Colors.white,
          checkColor: Colors.black,
          value: value,
          onChanged: (value) {
            // todo here can make sharedprmance to make it login all time if he make it true
            setState(() {
              widget.onChanged(value!);
              this.value = value;
            });
          },
        ),

        Text('Remember Me', style: TextStyle(color: Colors.white)),
      ],
    );
  }
}

class TextFieldCustomWidget extends StatefulWidget {
  const TextFieldCustomWidget({
    super.key,
    required this.hintText,
    required this.controller,
  });

  final String hintText;

  final TextEditingController controller;

  @override
  State<TextFieldCustomWidget> createState() => _TextFieldCustomWidgetState();
}

class _TextFieldCustomWidgetState extends State<TextFieldCustomWidget> {
  bool obscureText = false;
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.controller,
      obscureText: obscureText,
      style: TextStyle(color: Colors.white),
      decoration: InputDecoration(
        suffixIcon: widget.hintText == 'Password'
            ? obscureText == false
                  ? IconButton(
                      onPressed: () {
                        setState(() {
                          obscureText = true;
                        });
                      },
                      icon: Icon(Icons.visibility, color: Colors.white),
                    )
                  : IconButton(
                      onPressed: () {
                        setState(() {
                          obscureText = false;
                        });
                      },
                      icon: Icon(Icons.visibility_off, color: Colors.white),
                    )
            : SizedBox.shrink(),
        hintText: widget.hintText,
        hintStyle: TextStyle(color: Colors.white),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
        ),
      ),
    );
  }
}

class IconButtonCustomWidget extends StatelessWidget {
  const IconButtonCustomWidget({
    super.key,
    required this.icon,
    required this.onPressed,
  });

  final IconData icon;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(0),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.2),
        shape: BoxShape.circle,
      ),
      child: IconButton(
        onPressed: onPressed,
        icon: Icon(icon, size: 24, color: Colors.white),
      ),
    );
  }
}

class TabBarCustomWidget extends StatelessWidget {
  const TabBarCustomWidget({super.key, required this.tabController});

  final TabController tabController;

  @override
  Widget build(BuildContext context) {
    return TabBar(
      controller: tabController,
      indicatorSize: TabBarIndicatorSize.tab,

      indicator: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.red, Colors.orange, Colors.yellow],
        ),
      ),
      labelColor: Colors.white,
      unselectedLabelColor: Colors.white70,
      tabs: [
        Tab(text: 'Login'),
        Tab(text: 'Register'),
      ],
    );
  }
}
