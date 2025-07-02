import 'package:flutter/material.dart';

class CardModel {
  final String title, description, imagePath;
  final Color backgroundColor;
  final IconData icon;
  final int index;

  CardModel(
     {
    required this.title,
    required this.index,
    required this.description,
    required this.imagePath,
    required this.backgroundColor,
    required this.icon,
  });
}
