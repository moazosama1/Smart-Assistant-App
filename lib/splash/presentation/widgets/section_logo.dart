import 'package:chat_bot_app/core/utils/assets_app.dart';
import 'package:flutter/material.dart';

class SectionLogo extends StatelessWidget {
  const SectionLogo({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          Image.asset(
            AssetApp.imageAiLogoImage,
            fit: BoxFit.scaleDown,
          ),
          Text(
            "How may I help you today!",
            textAlign: TextAlign.center,
            style: theme.textTheme.displaySmall,
          ),
        ],
      ),
    );
  }
}
