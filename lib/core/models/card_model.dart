import 'package:flutter/material.dart';

class CardModel {
  final String title, description, imagePath;
  final Color backgroundColor;
  final IconData icon;

  CardModel({
    required this.title,
    required this.description,
    required this.imagePath,
    required this.backgroundColor,
    required this.icon,
  });
}
