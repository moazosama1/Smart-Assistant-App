import 'dart:ui';

import 'package:chat_bot_app/home/domain/entities/text_generation_entities/text_generation_entities.dart';
import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

class CustomMarkdownStyleMessage extends StatelessWidget {
  const CustomMarkdownStyleMessage({
    super.key,
    required this.textGenerationEntities,
  });

  final TextGenerationEntities textGenerationEntities;

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return MarkdownBody(
      data: textGenerationEntities.responseText,
      styleSheet: MarkdownStyleSheet.fromTheme(Theme.of(context)).copyWith(
        p: theme.textTheme.titleSmall,
        code: TextStyle(
          backgroundColor: Color(0xff16191d).withAlpha(150),
          color: theme.colorScheme.onSurface,
          fontSize: 13,
        ),
        codeblockDecoration: BoxDecoration(
          color: theme.colorScheme.primary.withAlpha(60),
          borderRadius: BorderRadius.circular(16),
        ),
        h1: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        h2: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        h3: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        em: TextStyle(fontStyle: FontStyle.italic),
        strong: TextStyle(fontWeight: FontWeight.bold),
        a: TextStyle(
          color: Colors.blue,
          decoration: TextDecoration.underline,
        ),
        blockSpacing: 10,
        listBullet: TextStyle(fontSize: 14, color: theme.colorScheme.onSurface),
        codeblockPadding: EdgeInsets.all(10),
        listIndent: 24.0,
        listBulletPadding: EdgeInsets.only(right: 8),
      ),
    );
  }
}
