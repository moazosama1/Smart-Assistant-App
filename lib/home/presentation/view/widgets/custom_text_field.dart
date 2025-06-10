import 'dart:developer';

import 'package:chat_bot_app/core/utils/assets_app.dart';
import 'package:chat_bot_app/core/utils/colors_app.dart';
import 'package:chat_bot_app/core/widgets/custom_border_text_field.dart';
import 'package:chat_bot_app/core/widgets/show_attachment_picker.dart';
import 'package:chat_bot_app/home/presentation/view/widgets/custom_icon_circular.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
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
        prefixIcon: GestureDetector(
          onTap: () async {
            // log("failure");
            // showAttachmentPicker(context);

            final ImagePicker picker = ImagePicker();
            final XFile? pickedFile =
                await picker.pickImage(source: ImageSource.gallery);

            if (pickedFile != null) {
              log("Success");
            } else {
              print('No image selected.');
            }
          },
          child: Icon(
            Icons.attach_file_rounded,
            color: ColorsApp.whiteColor,
          ),
        ),
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
