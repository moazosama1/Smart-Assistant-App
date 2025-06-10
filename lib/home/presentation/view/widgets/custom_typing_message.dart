import 'package:chat_bot_app/home/presentation/view/widgets/custom_circular.dart';
import 'package:chat_bot_app/home/presentation/view/widgets/custom_text_field.dart';
import 'package:chat_bot_app/home/presentation/view_model/cubit/chat_text_generation_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomTypingMessage extends StatefulWidget {
  const CustomTypingMessage({
    super.key,
  });

  @override
  State<CustomTypingMessage> createState() => _CustomTypingMessageState();
}

class _CustomTypingMessageState extends State<CustomTypingMessage> {
  final TextEditingController textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Row(
      spacing: 5,
      children: [
        Expanded(
            child: CustomTextField(
          textEditingController: textEditingController,
          onSubmitted: (value) async {
            await BlocProvider.of<ChatTextGenerationCubit>(context)
                .textGenerationChat(value);
            textEditingController.clear();
          },
          onTap: () async {
            await BlocProvider.of<ChatTextGenerationCubit>(context)
                .textGenerationChat(textEditingController.text);
            textEditingController.clear();
          },
        )),
        CustomCircular(
          iconData: Icons.graphic_eq_outlined,
          bgColor: theme.colorScheme.primary,
        )
      ],
    );
  }
}
