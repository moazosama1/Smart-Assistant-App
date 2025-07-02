import 'package:flutter/material.dart';

class MainProvider extends ChangeNotifier {
  String newSession = '';
  void newSessionId({required String id}) {
    newSession = id;
  }
}
