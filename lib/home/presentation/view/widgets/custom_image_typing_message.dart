import 'package:chat_bot_app/home/presentation/view/widgets/custom_general_text_field.dart';
import 'package:chat_bot_app/home/presentation/view_model/cubit/chat_image_generation/chat_image_generation_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomImageTypingMessage extends StatefulWidget {
  const CustomImageTypingMessage({super.key});

  @override
  State<CustomImageTypingMessage> createState() =>
      _CustomImageTypingMessageState();
}

class _CustomImageTypingMessageState extends State<CustomImageTypingMessage> {
  TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return CustomGeneralTextField(
      textEditingController: textEditingController,
      onSubmitted: (value) async {
        await BlocProvider.of<ChatImageGenerationCubit>(context)
            .fetchImageGenerationCubit(prompt: textEditingController.text);
        textEditingController.clear();
      },
      onTap: () async {
        await BlocProvider.of<ChatImageGenerationCubit>(context)
            .fetchImageGenerationCubit(prompt: textEditingController.text);
        textEditingController.clear();
      },
    );
  }
}
