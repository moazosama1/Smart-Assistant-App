import 'dart:developer';

import 'package:chat_bot_app/core/utils/colors_app.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:toggle_switch/toggle_switch.dart';

ToggleSwitch themeToggleSwitch() {
  return ToggleSwitch(
    minWidth: 50.0,
    minHeight: 30.0,
    initialLabelIndex: 0,
    cornerRadius: 20.0,
    activeFgColor: Colors.white,
    inactiveBgColor: Colors.grey,
    inactiveFgColor: Colors.white,
    totalSwitches: 2,
    icons: [
      Icons.dark_mode_outlined,
      FontAwesomeIcons.lightbulb,
    ],
    iconSize: 30.0,
    activeBgColors: [
      [Colors.black45, Colors.black87],
      [Colors.yellow, Colors.orange]
    ],
    animate: true,
    curve: Curves.bounceInOut,
    onToggle: (index) {
      log('switched to: $index');
    },
  );
}

ToggleSwitch languageToggleSwitch() {
  return ToggleSwitch(
    minWidth: 50.0,
    minHeight: 30.0,
    initialLabelIndex: 0,
    cornerRadius: 20.0,
    activeBgColors: [
      [ColorsApp.primaryColor],
      [ColorsApp.orangeColor],
    ],
    activeFgColor: Colors.white,
    inactiveBgColor: Colors.grey,
    inactiveFgColor: Colors.white,
    totalSwitches: 2,
    labels: ['English', 'Arabic'],
    animate: true,
    fontSize: 14,
    radiusStyle: true,
    onToggle: (index) {
      log('switched to: $index');
    },
  );
}
