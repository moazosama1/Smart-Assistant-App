import 'package:chat_bot_app/core/utils/assets_app.dart';
import 'package:flutter/material.dart';

class CustomPersonImage extends StatelessWidget {
  const CustomPersonImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(360),
        child: Image.asset(AssetApp.imagePerson),
      ),
    );
  }
}
