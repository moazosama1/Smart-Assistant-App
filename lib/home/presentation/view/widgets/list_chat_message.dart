import 'package:chat_bot_app/home/domain/entities/text_generation_entities/text_generation_entities.dart';
import 'package:chat_bot_app/home/presentation/view/widgets/custom_message_send_recived.dart';
import 'package:flutter/material.dart';

class ListChatMessage extends StatefulWidget {
  const ListChatMessage({
    super.key,
    required this.textMessage,
  });
  final List<TextGenerationEntities> textMessage;

  @override
  State<ListChatMessage> createState() => _ListChatMessageState();
}

class _ListChatMessageState extends State<ListChatMessage> {
  final ScrollController _scrollController = ScrollController();
  @override
  void didUpdateWidget(covariant ListChatMessage oldWidget) {
    super.didUpdateWidget(oldWidget);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (_scrollController.hasClients) {
        _scrollController.animateTo(
          _scrollController.position.minScrollExtent,
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeOut,
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        controller: _scrollController,
        reverse: true,
        itemBuilder: (context, index) {
          return CustomMessageSendReceived(
            textGenerationEntities: widget.textMessage[index],
          );
        },
        separatorBuilder: (context, index) => SizedBox(
              height: 10,
            ),
        itemCount: widget.textMessage.length);
  }
}
