import 'package:chat_bot_app/home/domain/entities/text_generation_entities/text_generation_entities.dart';
import 'package:chat_bot_app/home/presentation/view/widgets/custom_received_message.dart';
import 'package:chat_bot_app/home/presentation/view/widgets/custom_sender_message.dart';
import 'package:flutter/material.dart';
import 'package:simple_typing_indicator/simple_typing_indicator.dart';

class CustomMessageSendReceived extends StatelessWidget {
  const CustomMessageSendReceived({
    super.key,
    required this.textGenerationEntities,
  });
  final TextGenerationEntities textGenerationEntities;
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    if (textGenerationEntities.isLoading) {
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
    return textGenerationEntities.isUser
        ? CustomSenderMessage(textGenerationEntities: textGenerationEntities)
        : CustomReceivedMessage(textGenerationEntities: textGenerationEntities);
  }
}
