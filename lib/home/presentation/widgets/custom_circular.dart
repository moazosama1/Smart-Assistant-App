import 'package:chat_bot_app/core/models/card_model.dart';
import 'package:flutter/material.dart';
    
class CustomCircular extends StatelessWidget {

  const CustomCircular({
    super.key,
    required this.cardModel,
  });

  final CardModel cardModel;

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);

    return Container(
      decoration: BoxDecoration(
        color: Colors.white.withAlpha(100),
        shape: BoxShape.circle,
      ),
      padding: const EdgeInsets.all(10),
      child: Icon(
        cardModel.icon,
        color: theme.colorScheme.onSurface,
        size: 35,
      ),
    );
  }
}