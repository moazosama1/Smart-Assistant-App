import 'package:chat_bot_app/core/utils/colors_app.dart';
import 'package:chat_bot_app/home/presentation/widgets/custom_circular.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomReceivedMessage extends StatelessWidget {
  const CustomReceivedMessage({
    super.key,
  });

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
            child: Text(
              "AI: Great choice! Start by learning basic concepts like variables, conditional statements, and loops. try to start small projects to gain practical experience.AI: You can start with writing a simple program like a calculator or a list manager.",
              style: theme.textTheme.titleSmall,
            ),
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
