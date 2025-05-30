import 'package:chat_bot_app/core/buttons/custom_main_button.dart';
import 'package:chat_bot_app/core/utils/assets_app.dart';
import 'package:chat_bot_app/home/presentation/home_view.dart';
import 'package:chat_bot_app/splash/presentation/widgets/section_logo.dart';
import 'package:flutter/material.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
      ),
      child: Column(
        spacing: 50,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SectionLogo(),
          CustomMainButton(
            textButton: "Get Started",
            onTap: () {
              Navigator.pushNamedAndRemoveUntil(
                context,
                HomeView.routeName,
                (route) => false,
              );
            },
          ),
        ],
      ),
    );
  }
}
