import 'package:chat_bot_app/home/data/data_source/store/store_data.dart';
import 'package:chat_bot_app/home/domain/entities/text_generation_entities/text_generation_entities.dart';
import 'package:chat_bot_app/home/presentation/view/widgets/custom_message_send_recived.dart';
import 'package:chat_bot_app/home/presentation/view_model/provider/main_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ListTextChatMessage extends StatefulWidget {
  const ListTextChatMessage({
    super.key,
    required this.textMessage,
  });
  final List<TextGenerationEntities> textMessage;

  @override
  State<ListTextChatMessage> createState() => _ListTextChatMessageState();
}

class _ListTextChatMessageState extends State<ListTextChatMessage> {
  final ScrollController _scrollController = ScrollController();
  @override
  void didUpdateWidget(covariant ListTextChatMessage oldWidget) {
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
          var sessionId =
              Provider.of<MainProvider>(context, listen: false).newSession;
          StoreData.addMessageToSession(
              sessionId: sessionId, message: widget.textMessage[index]);
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
