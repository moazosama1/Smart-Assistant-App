import 'package:chat_bot_app/home/presentation/widgets/ListCustomCard.dart';
import 'package:chat_bot_app/home/presentation/widgets/custom_card_message_history.dart';
import 'package:chat_bot_app/home/presentation/widgets/custom_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Start a new chat?",
            textAlign: TextAlign.start,
            style: theme.textTheme.headlineLarge,
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(
            flex: 2,
            child: ListCustomCard(),
          ),
          SizedBox(
            height: 10,
          ),
          CustomHeader(),
          SizedBox(
            height: 10,
          ),
          Expanded(
            flex: 3,
            child: GridView.custom(
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
                childCount: 20,
                (context, index) => CustomCardMessageHistory(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
