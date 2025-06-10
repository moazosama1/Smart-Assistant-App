import 'package:chat_bot_app/core/utils/colors_app.dart';
import 'package:chat_bot_app/home/domain/entities/text_generation_entities/text_generation_entities.dart';
import 'package:chat_bot_app/home/presentation/view/widgets/custom_circular.dart';
import 'package:chat_bot_app/home/presentation/view/widgets/custom_markdown_style_message.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomReceivedMessage extends StatelessWidget {
  const CustomReceivedMessage({
    super.key,
    required this.textGenerationEntities,
  });
  final TextGenerationEntities textGenerationEntities;
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 8,
      children: [
        Expanded(
          child: Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: ColorsApp.backgroundColor.withAlpha(170),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(16),
                topLeft: Radius.circular(16),
                topRight: Radius.circular(16),
              ),
              border: Border.all(
                width: 1,
                color: theme.colorScheme.primary,
              ),
            ),
            child: CustomMarkdownStyleMessage(
                textGenerationEntities: textGenerationEntities),
          ),
        ),
        CustomCircular(
          iconData: FontAwesomeIcons.google,
          bgColor: theme.colorScheme.primary,
        ),
      ],
    );
  }
}
