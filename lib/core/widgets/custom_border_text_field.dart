import 'package:chat_bot_app/core/utils/colors_app.dart';
import 'package:flutter/material.dart';

OutlineInputBorder customBorderTextField() {
  return OutlineInputBorder(
    borderSide:
        BorderSide(color: ColorsApp.whiteColor.withAlpha(150), width: 1),
    borderRadius: BorderRadius.circular(
      20,
    ),
  );
}
