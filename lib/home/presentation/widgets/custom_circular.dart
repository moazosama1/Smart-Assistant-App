import 'package:flutter/material.dart';

class CustomCircular extends StatelessWidget {
  const CustomCircular({
    super.key,
    required this.iconData,
    this.bgColor,
  });

  final IconData iconData;
  final Color? bgColor;
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);

    return Container(
      decoration: BoxDecoration(
        color: bgColor ?? Colors.white.withAlpha(100),
        shape: BoxShape.circle,
      ),
      padding: const EdgeInsets.all(10),
      child: Icon(
        iconData,
        color: theme.colorScheme.onSurface,
        size: 25,
      ),
    );
  }
}
