import 'package:chat_bot_app/core/utils/constant.dart';
import 'package:chat_bot_app/splash/presentation/widgets/splash_view_body.dart';
import 'package:flutter/material.dart';

class SplashView extends StatelessWidget {
  static String routeName = Constant.splashViewName;
  const SplashView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SplashViewBody(),
    );
  }
}
