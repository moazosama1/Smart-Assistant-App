
import 'package:chat_bot_app/home/data/data_source/local/home_local_data_source.dart';
import 'package:chat_bot_app/home/data/data_source/store/store_data.dart';
import 'package:chat_bot_app/home/domain/entities/text_generation_entities/text_generation_entities.dart';

class HomeLocalDataSourceImpl extends HomeLocalDataSource {
  @override
  List<List<TextGenerationEntities>> getAllSessionMessage() {
    List<String> allKeys = StoreData.getAllKeys();
    List<List<TextGenerationEntities>> allSession = [];
    for (var element in allKeys) {
      List<TextGenerationEntities> session =
          StoreData.getSessionMessages(sessionId: element);
      allSession.add(session);
    }

    return allSession;
  }
}
