import 'package:chat_bot_app/core/models/card_model.dart';
import 'package:chat_bot_app/home/presentation/widgets/custom_circular.dart';
import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({super.key, required this.cardModel});
  final CardModel cardModel;

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return AspectRatio(
      aspectRatio: 200 / 240,
      child: Container(
        decoration: BoxDecoration(
          color: cardModel.backgroundColor,
          borderRadius: BorderRadius.circular(16),
        ),
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomCircular(cardModel: cardModel),
            const SizedBox(height: 10),
            Text(
              cardModel.title,
              style: theme.textTheme.titleSmall,
            ),
            const SizedBox(height: 10),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Text(
                      cardModel.description,
                      maxLines: 4,
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.titleLarge!.copyWith(
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Image.asset(
                      cardModel.imagePath,
                      fit: BoxFit.fill,
                      opacity: const AlwaysStoppedAnimation<double>(0.6),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: const [
                Icon(Icons.arrow_forward_ios_rounded),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
