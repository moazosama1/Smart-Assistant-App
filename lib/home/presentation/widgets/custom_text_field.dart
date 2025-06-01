import 'package:chat_bot_app/core/utils/assets_app.dart';
import 'package:chat_bot_app/core/utils/colors_app.dart';
import 'package:chat_bot_app/core/widgets/custom_border_text_field.dart';
import 'package:chat_bot_app/core/widgets/show_attachment_picker.dart';
import 'package:chat_bot_app/home/presentation/widgets/custom_icon_circular.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return TextField(
      decoration: InputDecoration(
        hintText: "Write a message...",
        hintStyle: theme.textTheme.titleSmall,
        border: customBorderTextField(),
        enabledBorder: customBorderTextField(),
        disabledBorder: customBorderTextField(),
        focusedBorder: customBorderTextField(),
        prefixIcon: GestureDetector(
          onTap: () {
            showAttachmentPicker(context);
          },
          child: Icon(
            Icons.attach_file_rounded,
            color: ColorsApp.whiteColor,
          ),
        ),
        suffixIcon: CustomIconCircular(
          isBorder: false,
          svgPath: AssetApp.iconsSend2,
        ),
      ),
    );
  }
}
