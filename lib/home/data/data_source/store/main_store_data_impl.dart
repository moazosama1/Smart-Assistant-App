import 'package:chat_bot_app/home/data/data_source/store/main_store_data.dart';
import 'package:chat_bot_app/home/domain/entities/text_generation_entities/text_generation_entities.dart';
import 'package:hive/hive.dart';

class SessionRepositoryImpl implements SessionRepository {
  final Box<Map> box;

  SessionRepositoryImpl(this.box);

  @override
  Future<void> addNewSession(String sessionId) async {
    Map newSession = box.get('sessions') ?? {};
    newSession[sessionId] = [];
    await box.put('sessions', newSession);
  }

  @override
  Future<void> addMessage(
      String sessionId, TextGenerationEntities message) async {
    Map allSessions = box.get('sessions') ?? {};
    List currentMessages = allSessions[sessionId] ?? [];
    currentMessages.add(message);
    allSessions[sessionId] = currentMessages;
    await box.put('sessions', allSessions);
  }

  @override
  List<TextGenerationEntities> getMessages(String sessionId) {
    Map allSessions = box.get('sessions') ?? {};
    final dynamic rawMessages = allSessions[sessionId];
    if (rawMessages is List) {
      return rawMessages.whereType<TextGenerationEntities>().toList();
    }
    return [];
  }

  @override
  List<String> getAllSessionIds() {
    Map sessions = box.get('sessions') ?? {};
    return sessions.keys.cast<String>().toList();
  }

  @override
  Future<void> deleteAllSessions() async {
    Map sessions = box.get('sessions') ?? {};
    for (var key in sessions.keys) {
      sessions.remove(key);
    }
    await box.put('sessions', sessions);
  }
}
