import 'package:bloc/bloc.dart';
import 'package:chat_bot_app/home/data/data_source/local/home_local_data_source.dart';
import 'package:chat_bot_app/home/domain/entities/text_generation_entities/text_generation_entities.dart';
import 'package:meta/meta.dart';

part 'all_session_message_state.dart';

class AllSessionMessageCubit extends Cubit<AllSessionMessageState> {
  AllSessionMessageCubit({required this.homeLocalDataSource})
      : super(AllSessionMessageInitial());
  final HomeLocalDataSource homeLocalDataSource;
  List<List<TextGenerationEntities>> listMessage = [];
  getAllSessions() {
    listMessage = homeLocalDataSource.getAllSessionMessage();
    for (int i = 0; i < listMessage.length; i++) {
      if (listMessage[i].isEmpty) {
        listMessage.removeAt(i);
      }
    }
    emit(AllSessionMessageSuccess());
  }
}
