import 'package:chat_bot_app/home/presentation/widgets/custom_circular.dart';
import 'package:chat_bot_app/home/presentation/widgets/custom_received_message.dart';
import 'package:chat_bot_app/home/presentation/widgets/custom_sender_message.dart';
import 'package:chat_bot_app/home/presentation/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class ChatViewBody extends StatelessWidget {
  const ChatViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Expanded(
            child: ListView.separated(
              reverse: true,
                itemBuilder: (context, index) {
                  return index % 2 == 0
                      ? CustomSenderMessage()
                      : CustomReceivedMessage();
                },
                separatorBuilder: (context, index) => SizedBox(
                      height: 10,
                    ),
                itemCount: 20),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            spacing: 5,
            children: [
              Expanded(child: CustomTextField()),
              CustomCircular(
                iconData: Icons.graphic_eq_outlined,
                bgColor: theme.colorScheme.primary,
              )
            ],
          ),
        ],
      ),
    );
  }
}
