import 'package:chat_bot_app/core/utils/assets_app.dart';
import 'package:chat_bot_app/home/presentation/widgets/custom_icon_circular.dart';
import 'package:flutter/material.dart';

class CustomAppBar {
  static AppBar customAppBar(ThemeData theme) {
    return AppBar(
      title: Text(
        "Hi, Human👋",
        style: theme.textTheme.titleSmall,
      ),
      leading: Center(
        child: CustomIconCircular(isBorder: true, svgPath: AssetApp.iconsShape),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.all(10),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Image.asset(AssetApp.imagePerson),
          ),
        ),
      ],
    );
  }
}
