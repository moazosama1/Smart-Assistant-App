import 'dart:developer';

import 'package:chat_bot_app/home/domain/entities/text_generation_entities/text_generation_entities.dart';
import 'package:hive_flutter/adapters.dart';

abstract class StoreData {
  static const String _boxName = 'chatBox';
  static Future<Box<Map>> openBox() async {
    return await Hive.openBox<Map>(_boxName);
  }

  static Box<Map> getBox() {
    return Hive.box<Map>(_boxName);
  }

  static void deleteBox() {
    final box = getBox();
    Map sessions = box.get('sessions') ?? {};
    for (var key in getAllKeys()) {
      sessions.remove(key);
    }
    box.put('sessions', sessions);
    log("all session is deleted");
  }

  static List<String> getAllKeys() {
    final box = getBox();
    Map session = box.get('sessions') ?? {};
    return session.keys.cast<String>().toList();
  }

  static Future<void> addNewSession({
    required String sessionId,
  }) async {
    final box = getBox();
    Map newSession = box.get('sessions') ?? {};
    newSession[sessionId] = [];
    await box.put('sessions', newSession);
  }

  static Future<void> addMessageToSession({
    required String sessionId,
    required TextGenerationEntities message,
  }) async {
    final box = getBox();
    Map allSessions = box.get('sessions') ?? {};
    List currentMessages = allSessions[sessionId] ?? [];
    currentMessages.add(message);
    allSessions[sessionId] = currentMessages;
    await box.put('sessions', allSessions);
    log(sessionId);
  }

  static List<TextGenerationEntities> getSessionMessages(
      {required String sessionId}) {
    final box = getBox();
    Map allSessions = box.get('sessions') ?? {};
    if (allSessions.containsKey(sessionId)) {
      final dynamic rawMessages = allSessions[sessionId];
      List<TextGenerationEntities> messages = [];
      if (rawMessages is List) {
        messages = rawMessages
            .whereType<TextGenerationEntities>()
            .cast<TextGenerationEntities>()
            .toList();
      }
      return messages;
    } else {
      return [];
    }
  }
}
