import 'package:flutter/material.dart';
import 'package:toggle_switch/toggle_switch.dart';

class CustomSwitchButton extends StatelessWidget {
  const CustomSwitchButton({
    super.key,
    required this.toggleSwitch,
    required this.title,
  });

  final ToggleSwitch toggleSwitch;
  final String title;

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: theme.textTheme.titleMedium,
        ),
        toggleSwitch,
      ],
    );
  }
}
