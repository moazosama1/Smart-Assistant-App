import 'package:chat_bot_app/core/utils/colors_app.dart';
import 'package:chat_bot_app/home/presentation/widgets/custom_circular.dart';
import 'package:flutter/material.dart';

class CustomAttachOption extends StatelessWidget {
  final IconData icon;
  final String label;

  const CustomAttachOption({
    super.key,
    required this.icon,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        CustomCircular(
          iconData: icon,
          bgColor: ColorsApp.primaryColor,
        ),
        const SizedBox(height: 8),
        Text(
          label,
          style: const TextStyle(color: Colors.white),
        ),
      ],
    );
  }
}
