import 'package:flutter/material.dart';

class CustomCardMessageHistory extends StatelessWidget {
  const CustomCardMessageHistory({super.key});

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
            "How can I forget a bad memory?",
            style: theme.textTheme.titleMedium!.copyWith(
              color: theme.colorScheme.primary,
            ),
            maxLines: 2,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "AI: Great choice! Start by learning basic concepts like variables, conditional statements, and loops. try to start small projects to gain practical experience.AI: You can start with writing a simple program like a calculator or a list manager.",
                  style: theme.textTheme.titleSmall,
                  maxLines: 4,
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  "28 mins ago",
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
