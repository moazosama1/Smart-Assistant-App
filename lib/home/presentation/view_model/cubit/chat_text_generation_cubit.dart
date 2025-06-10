// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:chat_bot_app/home/domain/entities/text_generation_entities/text_generation_entities.dart';
import 'package:chat_bot_app/home/domain/use_cases/text_generation_use_case.dart';
// ignore: depend_on_referenced_packages
import 'package:meta/meta.dart';

part 'chat_text_generation_state.dart';

class ChatTextGenerationCubit extends Cubit<ChatTextGenerationState> {
  ChatTextGenerationCubit({required this.textGenerationUseCase})
      : super(ChatTextGenerationInitial());
  final TextGenerationUseCase textGenerationUseCase;
  List<TextGenerationEntities> allMessages = [];
  textGenerationChat(final String message) async {
    if (message.isEmpty) {
      emit(ChatTextGenerationInitial(textMessage: allMessages));
      return;
    }
    final userMessage = TextGenerationEntities(
      requestText: message,
      isUser: true,
      responseText: "",
    );
    allMessages.add(userMessage);
    final loadingBotMessage = TextGenerationEntities(
      responseText: "Gemini is typing...",
      requestText: "",
      isUser: false,
      isLoading: true,
    );
    allMessages.add(loadingBotMessage);
    emit(ChatTextGenerationSuccess(
      textMessage: allMessages.reversed.toList(),
    ));

    var data = await textGenerationUseCase.call(message: message);
    data.fold(
      (l) {
        allMessages.removeWhere((e) => e.isLoading == true);
        allMessages.add(l);
        emit(ChatTextGenerationSuccess(
            textMessage: allMessages.reversed.toList()));
      },
      (r) {
        allMessages.removeWhere((e) => e.isLoading == true);
        emit(ChatTextGenerationFailure(errorMessage: r.errorMessage));
      },
    );
  }
}
