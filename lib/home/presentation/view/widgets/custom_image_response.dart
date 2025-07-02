import 'package:chat_bot_app/home/data/models/text_generation_model/text_generation_model.dart';
import 'package:chat_bot_app/home/domain/entities/image_generation_entities.dart';
import 'package:chat_bot_app/home/presentation/view/widgets/custom_image_created.dart';
import 'package:chat_bot_app/home/presentation/view/widgets/custom_sender_message.dart';
import 'package:flutter/material.dart';
import 'package:simple_typing_indicator/simple_typing_indicator.dart';

class CustomImageResponse extends StatelessWidget {
  const CustomImageResponse({
    super.key,
    required this.imageGenerationEntities,
  });
  final ImageGenerationEntities imageGenerationEntities;
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    if (imageGenerationEntities.isLoading) {
      return Padding(
        padding: const EdgeInsets.all(12),
        child: Center(
          child: Column(
            children: [
              SimpleTypingIndicator(
                dotColor: theme.colorScheme.primary,
                dotSize: 10.0,
                spacing: 5.0,
                duration: const Duration(milliseconds: 1000),
                speed: 1.0,
              )
            ],
          ),
        ),
      );
    }
    return imageGenerationEntities.isUser
        ? CustomSenderMessage(
            textGenerationEntities: TextGenerationModel(
              requestMessage: imageGenerationEntities.requestText,
            ),
          )
        : CustomImageCreated(
            imageAI: imageGenerationEntities.image,
          );
  }
}
