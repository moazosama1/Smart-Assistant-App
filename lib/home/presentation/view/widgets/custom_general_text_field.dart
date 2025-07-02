import 'package:chat_bot_app/core/utils/assets_app.dart';
import 'package:chat_bot_app/core/widgets/custom_border_text_field.dart';
import 'package:chat_bot_app/home/presentation/view/widgets/custom_icon_circular.dart';
import 'package:flutter/material.dart';

class CustomGeneralTextField extends StatelessWidget {
  const CustomGeneralTextField(
      {super.key,
      required this.textEditingController,
      this.onTap,
      this.onSubmitted});
  final TextEditingController textEditingController;
  final void Function()? onTap;
  final void Function(String)? onSubmitted;

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return TextField(
      onSubmitted: onSubmitted,
      controller: textEditingController,
      decoration: InputDecoration(
        hintText: "Write a message...",
        hintStyle: theme.textTheme.titleSmall,
        border: customBorderTextField(),
        enabledBorder: customBorderTextField(),
        disabledBorder: customBorderTextField(),
        focusedBorder: customBorderTextField(),
        suffixIcon: GestureDetector(
          onTap: onTap,
          child: CustomIconCircular(
            isBorder: false,
            svgPath: AssetApp.iconsSend2,
          ),
        ),
      ),
    );
  }
}
