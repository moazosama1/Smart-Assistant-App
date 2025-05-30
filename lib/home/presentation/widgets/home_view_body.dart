import 'package:chat_bot_app/home/presentation/widgets/ListCustomCard.dart';
import 'package:chat_bot_app/home/presentation/widgets/custom_header.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      child: Column(
        children: [
          Text(
            "How may I help you today?",
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
            flex: 1,
            child: SizedBox(),
          ),
          Expanded(
            flex: 1,
            child: SizedBox(),
          ),
        ],
      ),
    );
  }
}
