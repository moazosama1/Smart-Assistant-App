import 'package:chat_bot_app/core/utils/function.dart';
import 'package:chat_bot_app/home/domain/entities/text_generation_entities/text_generation_entities.dart';
import 'package:flutter/material.dart';

class CustomCardMessageHistory extends StatelessWidget {
  const CustomCardMessageHistory(
      {super.key, required this.textGenerationEntities});
  final TextGenerationEntities textGenerationEntities;
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);

    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: Colors.white24,
          width: 1,
        ),
      ),
      child: Column(
        spacing: 5,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            textGenerationEntities.requestText,
            style: theme.textTheme.titleMedium!.copyWith(
              color: theme.colorScheme.primary,
            ),
            maxLines: 2,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  textGenerationEntities.responseText,
                  style: theme.textTheme.titleSmall,
                  maxLines: 4,
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  formatDate(textGenerationEntities.dateTime!),
                  style: theme.textTheme.titleSmall!
                      .copyWith(color: Colors.grey, fontSize: 10),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
