import 'package:chat_bot_app/home/domain/entities/text_generation_entities/text_generation_entities.dart';

abstract class HomeLocalDataSource {
List<List<TextGenerationEntities>> getAllSessionMessage();
}
