import 'package:chat_bot_app/home/presentation/view/widgets/image_generation_body.dart';
import 'package:flutter/material.dart';

class ImageGenerationView extends StatelessWidget {
  const ImageGenerationView({super.key});
  static const String routeName = "image_view";
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'AI Generate Image',
          style: theme.textTheme.titleMedium,
        ),
      ),
      body: ImageGenerationBody(),
    );
  }
}
