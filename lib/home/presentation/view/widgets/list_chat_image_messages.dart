import 'package:chat_bot_app/home/domain/entities/image_generation_entities.dart';
import 'package:chat_bot_app/home/presentation/view/widgets/custom_image_response.dart';
import 'package:flutter/material.dart';

class ListChatImageMessages extends StatefulWidget {
  const ListChatImageMessages({super.key, required this.listChatImageMessages});
  final List<ImageGenerationEntities> listChatImageMessages;

  @override
  State<ListChatImageMessages> createState() => _ListChatImageMessagesState();
}

class _ListChatImageMessagesState extends State<ListChatImageMessages> {
  final ScrollController _scrollController = ScrollController();
  @override
  void didUpdateWidget(covariant ListChatImageMessages oldWidget) {
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
        reverse: true,
        itemBuilder: (context, index) {
          return CustomImageResponse(
              imageGenerationEntities: widget.listChatImageMessages[index]);
        },
        separatorBuilder: (context, index) => SizedBox(
              height: 10,
            ),
        itemCount: widget.listChatImageMessages.length);
  }
}
