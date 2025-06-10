import 'package:chat_bot_app/home/presentation/view/widgets/list_chat_message.dart';
import 'package:chat_bot_app/home/presentation/view_model/cubit/chat_text_generation_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BlocBuilderTextGeneration extends StatelessWidget {
  const BlocBuilderTextGeneration({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChatTextGenerationCubit, ChatTextGenerationState>(
      builder: (context, state) {
        switch (state) {
          case ChatTextGenerationInitial():
            return Expanded(
              child: ListChatMessage(
                textMessage: state.textMessage,
              ),
            );
          case ChatTextGenerationFailure():
            return Center(
              child: Text(state.errorMessage),
            );
          case ChatTextGenerationSuccess():
            return Expanded(
              child: ListChatMessage(
                textMessage: state.textMessage,
              ),
            );
        }
      },
    );
  }
}
