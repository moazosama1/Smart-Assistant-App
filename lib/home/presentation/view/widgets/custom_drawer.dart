import 'package:chat_bot_app/core/utils/colors_app.dart';
import 'package:chat_bot_app/core/widgets/toggle_switch.dart';
import 'package:chat_bot_app/home/presentation/view/widgets/custom_person_image.dart';
import 'package:chat_bot_app/home/presentation/view/widgets/custom_switch_button.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Drawer(
      backgroundColor: ColorsApp.backgroundColor,
      width: MediaQuery.sizeOf(context).width * .7,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          spacing: 20,
          children: [
            SizedBox(height: 100, child: CustomPersonImage()),
            Text(
              "Moaz Osama",
              style: theme.textTheme.titleMedium,
            ),
            CustomSwitchButton(
              title: "Theme",
              toggleSwitch: themeToggleSwitch(),
            ),
            CustomSwitchButton(
              title: "Language",
              toggleSwitch: languageToggleSwitch(),
            ),
          ],
        ),
      ),
    );
  }
}
