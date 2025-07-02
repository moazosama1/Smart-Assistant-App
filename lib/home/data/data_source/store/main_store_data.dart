import 'package:chat_bot_app/home/domain/entities/text_generation_entities/text_generation_entities.dart';

abstract class SessionRepository {
  Future<void> addNewSession(String sessionId);
  Future<void> addMessage(String sessionId, TextGenerationEntities message);
  List<TextGenerationEntities> getMessages(String sessionId);
  List<String> getAllSessionIds();
  Future<void> deleteAllSessions();
}
