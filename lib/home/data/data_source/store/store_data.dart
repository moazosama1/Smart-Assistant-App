import 'package:chat_bot_app/home/domain/entities/text_generation_entities/text_generation_entities.dart';
import 'package:hive_flutter/adapters.dart';

class StoreData {
  static const String _boxName = 'chatBox';
  static Future<Box<List<TextGenerationEntities>>> openBox() async {
    return await Hive.openBox<List<TextGenerationEntities>>(_boxName);
  }
  static Box<List<TextGenerationEntities>> getBox() {
    return Hive.box<List<TextGenerationEntities>>(_boxName);
  }
  
  static Future<void> addNewSession(
      String sessionId, List<TextGenerationEntities> message) async {
    final box = getBox();
    await box.put(sessionId, message);
  }
}
