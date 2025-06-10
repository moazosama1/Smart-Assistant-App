import 'package:chat_bot_app/home/domain/entities/text_generation_entities/text_generation_entities.dart';

abstract class HomeRemoteData {
  Future<TextGenerationEntities> fetchTextGeneration({required String message});
}
