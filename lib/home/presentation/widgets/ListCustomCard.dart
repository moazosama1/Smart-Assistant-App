import 'package:chat_bot_app/core/models/list_card_model.dart';
import 'package:chat_bot_app/home/presentation/widgets/custom_card.dart';
import 'package:flutter/material.dart';

class ListCustomCard extends StatelessWidget {
  const ListCustomCard({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (context, index) => SizedBox(
        width: 10,
      ),
      itemBuilder: (context, index) => CustomCard(
        cardModel: ListCardModel.listCardModel[index],
      ),
      itemCount: ListCardModel.listCardModel.length,
      scrollDirection: Axis.horizontal,
    );
  }
}
