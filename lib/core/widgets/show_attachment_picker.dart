import 'package:chat_bot_app/core/utils/colors_app.dart';
import 'package:chat_bot_app/home/presentation/view/widgets/custom_attach_option.dart';
import 'package:flutter/material.dart';

void showAttachmentPicker(BuildContext context) {
  showBottomSheet(
    context: context,
    showDragHandle: true,
    backgroundColor: ColorsApp.backgroundColor,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
    ),
    builder: (context) {
      return DraggableScrollableSheet(
        initialChildSize: 0.2,
        minChildSize: 0.2,
        maxChildSize: 0.5,
        expand: false,
        builder: (context, scrollController) {
          return Padding(
            padding: const EdgeInsets.all(20),
            child: SingleChildScrollView(
              controller: scrollController,
              child: Wrap(
                spacing: 20,
                runSpacing: 20,
                children: [
                  CustomAttachOption(icon: Icons.photo, label: "Gallery"),
                  CustomAttachOption(icon: Icons.camera_alt, label: "Camera"),
                  CustomAttachOption(
                      icon: Icons.insert_drive_file, label: "Document"),
                  CustomAttachOption(icon: Icons.audiotrack, label: "Audio"),
                ],
              ),
            ),
          );
        },
      );
    },
  );
}
