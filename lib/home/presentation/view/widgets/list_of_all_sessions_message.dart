import 'package:chat_bot_app/home/domain/entities/text_generation_entities/text_generation_entities.dart';
import 'package:chat_bot_app/home/presentation/view/widgets/custom_card_message_history.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class ListOfAllSessionsMessage extends StatelessWidget {
  const ListOfAllSessionsMessage({
    super.key,
    required this.listSessions,
  });
  final List<List<TextGenerationEntities>> listSessions;
  @override
  Widget build(BuildContext context) {
    return GridView.custom(
      gridDelegate: SliverWovenGridDelegate.count(
        crossAxisCount: 2,
        mainAxisSpacing: 6,
        crossAxisSpacing: 6,
        pattern: [
          WovenGridTile(5 / 7, crossAxisRatio: 1),
          WovenGridTile(
            5 / 6,
            crossAxisRatio: 1,
            alignment: AlignmentDirectional.centerEnd,
          ),
        ],
      ),
      childrenDelegate: SliverChildBuilderDelegate(
        childCount: listSessions.length,
        (context, index) => CustomCardMessageHistory(
          textGenerationEntities: listSessions[index][2],
        ),
      ),
    );
  }
}
