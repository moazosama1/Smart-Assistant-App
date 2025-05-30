import 'package:chat_bot_app/core/models/card_model.dart';
import 'package:chat_bot_app/core/utils/assets_app.dart';
import 'package:chat_bot_app/core/utils/colors_app.dart';
import 'package:flutter/material.dart';

class ListCardModel {
  static List<CardModel> listCardModel = [
    CardModel(
      title: "Text Generation",
      description:
          "Need words? I write, rewrite, and summarize anything you imagine",
      backgroundColor: ColorsApp.primaryColor,
      imagePath: AssetApp.imageChatBalloon,
      icon: Icons.chat_rounded,
    ),
    CardModel(
      title: " Video Generation",
      description:
          "Turn your ideas into motion — I generate videos from pure imagination.",
      backgroundColor: ColorsApp.orangeColor,
      imagePath: AssetApp.imageAiVideo,
      icon: Icons.video_collection,
    ),
    CardModel(
      title: "Image Generation",
      description:
          "Describe it, and I’ll bring it to life — your vision, turned into visuals.",
      backgroundColor: Colors.redAccent,
      imagePath: AssetApp.imageContentCreator,
      icon: Icons.mic_rounded,
    ),
    CardModel(
      title: "Music Generation",
      description:
          "Create and explore sound like never before — your AI music assistant is here.",
      backgroundColor: ColorsApp.yellowColor,
      imagePath: AssetApp.imageViolin,
      icon: Icons.mic_rounded,
    ),
  ];
}
