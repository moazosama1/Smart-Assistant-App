import 'package:chat_bot_app/core/utils/colors_app.dart';
import 'package:chat_bot_app/home/presentation/widgets/custom_circular.dart';
import 'package:flutter/material.dart';

class CustomSenderMessage extends StatelessWidget {
  const CustomSenderMessage({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 8,
      children: [
        CustomCircular(
          iconData: Icons.person,
        ),
        Expanded(
          child: Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: ColorsApp.backgroundColor.withAlpha(170),
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(16),
                topLeft: Radius.circular(16),
                topRight: Radius.circular(16),
              ),
              border: Border.all(
                width: 1,
                color: theme.colorScheme.onSurface.withAlpha(100),
              ),
            ),
            child: Text(
              "Human: Yes, I think Python might be interesting. Where should I start?",
              style: theme.textTheme.titleSmall,
            ),
          ),
        )
      ],
    );
  }
}
