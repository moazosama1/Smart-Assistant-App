import 'dart:typed_data';

import 'package:flutter/material.dart';

class CustomImageCreated extends StatelessWidget {
  const CustomImageCreated({
    super.key,
    required this.imageAI,
  });
  final Uint8List imageAI;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: AspectRatio(
            aspectRatio: 1,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.memory(
                imageAI,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        SizedBox(
          width: MediaQuery.sizeOf(context).width * 0.1,
        ),
      ],
    );
  }
}
