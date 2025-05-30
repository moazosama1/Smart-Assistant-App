import 'package:chat_bot_app/core/utils/colors_app.dart';
import 'package:flutter/material.dart';

class CustomMainButton extends StatelessWidget {
  const CustomMainButton({super.key, required this.textButton, this.onTap});
  final String textButton;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 60,
        decoration: BoxDecoration(
          color: theme.colorScheme.onSurface,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Center(
          child: Text(
            textButton,
            style:
                theme.textTheme.titleSmall!.copyWith(color: ColorsApp.blackColor),
          ),
        ),
      ),
    );
  }
}
