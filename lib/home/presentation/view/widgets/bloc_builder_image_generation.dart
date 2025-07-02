import 'package:chat_bot_app/home/presentation/view/widgets/list_chat_image_messages.dart';
import 'package:chat_bot_app/home/presentation/view_model/cubit/chat_image_generation/chat_image_generation_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BlocBuilderImageGeneration extends StatelessWidget {
  const BlocBuilderImageGeneration({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ChatImageGenerationCubit, ChatImageGenerationState>(
      builder: (context, state) {
        switch (state) {
          case ChatImageGenerationInitial():
            return Expanded(
              child: ListChatImageMessages(
                listChatImageMessages: state.images,
              ),
            );
          case ChatImageGenerationFailure():
            return Center(
              child: Text(state.errorMessage),
            );
          case ChatImageGenerationSuccess():
            return Expanded(
              child: ListChatImageMessages(
                listChatImageMessages: state.images,
              ),
            );
        }
      },
    );
  }
}
