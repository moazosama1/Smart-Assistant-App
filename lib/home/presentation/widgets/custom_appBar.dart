import 'package:chat_bot_app/core/utils/assets_app.dart';
import 'package:chat_bot_app/home/presentation/widgets/custom_icon_circular.dart';
import 'package:chat_bot_app/home/presentation/widgets/custom_person_image.dart';
import 'package:flutter/material.dart';

class CustomAppBar {
  static AppBar customAppBar(ThemeData theme, GlobalKey<ScaffoldState> key) {
    return AppBar(
      title: Text(
        "Hi, Human👋",
        style: theme.textTheme.titleSmall,
      ),
      leading: Center(
        child: GestureDetector(
          onTap: () {
            key.currentState!.openDrawer();
          },
          child: CustomIconCircular(
            isBorder: true,
            svgPath: AssetApp.iconsShape,
          ),
        ),
      ),
      actions: [
        CustomPersonImage(),
      ],
    );
  }
}

