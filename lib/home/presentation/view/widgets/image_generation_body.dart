import 'package:chat_bot_app/home/presentation/view/widgets/bloc_builder_image_generation.dart';
import 'package:chat_bot_app/home/presentation/view/widgets/custom_image_typing_message.dart';


import 'package:flutter/material.dart';

class ImageGenerationBody extends StatelessWidget {
  const ImageGenerationBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        spacing: 10,
        children: [
          CustomImageTypingMessage(),
          BlocBuilderImageGeneration(),
        ].reversed.toList(),
      ),
    );
  }
}
