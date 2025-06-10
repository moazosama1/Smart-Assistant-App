import 'package:chat_bot_app/core/utils/constant.dart';
import 'package:chat_bot_app/home/presentation/view/widgets/chat_view_body.dart';
import 'package:flutter/material.dart';

class ChatView extends StatelessWidget {
  const ChatView({super.key});
  static const String routeName = Constant.chatViewName;
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'AI Chat',
          style: theme.textTheme.titleMedium,
        ),
      ),
      body: ChatViewBody(),
    );
  }
}
