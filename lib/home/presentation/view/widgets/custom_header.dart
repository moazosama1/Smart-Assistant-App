import 'package:flutter/material.dart';

class CustomHeader extends StatelessWidget {
  const CustomHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "History",
          style: theme.textTheme.titleMedium,
        ),
        Text(
          "show all",
          style: theme.textTheme.titleSmall,
        ),
      ],
    );
  }
}
