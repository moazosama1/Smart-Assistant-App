part of 'chat_text_generation_cubit.dart';

@immutable
sealed class ChatTextGenerationState {}

final class ChatTextGenerationInitial extends ChatTextGenerationState {
  final List<TextGenerationEntities> textMessage;
  ChatTextGenerationInitial({this.textMessage = const []});
}

final class ChatTextGenerationSuccess extends ChatTextGenerationState {
  final List<TextGenerationEntities> textMessage;
  ChatTextGenerationSuccess({required this.textMessage});
}

final class ChatTextGenerationFailure extends ChatTextGenerationState {
  final String errorMessage;

  ChatTextGenerationFailure({required this.errorMessage});
}
