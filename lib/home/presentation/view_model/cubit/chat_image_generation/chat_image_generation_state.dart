part of 'chat_image_generation_cubit.dart';

@immutable
sealed class ChatImageGenerationState {}

final class ChatImageGenerationInitial extends ChatImageGenerationState {
  final List<ImageGenerationEntities> images;

  ChatImageGenerationInitial({this.images = const []});
}

final class ChatImageGenerationFailure extends ChatImageGenerationState {
  final String errorMessage;

  ChatImageGenerationFailure({required this.errorMessage});
}

final class ChatImageGenerationSuccess extends ChatImageGenerationState {
  final List<ImageGenerationEntities> images;

  ChatImageGenerationSuccess({required this.images});
}
