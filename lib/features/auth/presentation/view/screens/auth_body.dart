import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:quiz_minds/core/utils/assets.dart';
import 'package:quiz_minds/features/auth/presentation/view/widgets/login_body.dart';
import 'package:quiz_minds/features/auth/presentation/view/widgets/register_body.dart';
import 'package:quiz_minds/features/auth/presentation/view/widgets/tab_bar_custom.dart';

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
                        children: [LoginBody(), RegisterBody()],
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
