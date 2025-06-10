import 'package:chat_bot_app/home/presentation/view/widgets/bloc_builder_text_generation.dart';
import 'package:chat_bot_app/home/presentation/view/widgets/custom_typing_message.dart';
import 'package:flutter/material.dart';

class ChatViewBody extends StatelessWidget {
  const ChatViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          BlocBuilderTextGeneration(),
          const SizedBox(
            height: 10,
          ),
          CustomTypingMessage(),
        ],
      ),
    );
  }
}
