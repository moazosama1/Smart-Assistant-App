import 'dart:typed_data';

import 'package:bloc/bloc.dart';
import 'package:chat_bot_app/home/domain/entities/image_generation_entities.dart';
import 'package:chat_bot_app/home/domain/use_cases/image_generation_use_case.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'chat_image_generation_state.dart';

class ChatImageGenerationCubit extends Cubit<ChatImageGenerationState> {
  ChatImageGenerationCubit({required this.imageGenerationUseCase})
      : super(ChatImageGenerationInitial());

  final ImageGenerationUseCase imageGenerationUseCase;
  List<ImageGenerationEntities> allImages = [];

  fetchImageGenerationCubit({required String prompt}) async {
    if (prompt.isEmpty) {
      emit(ChatImageGenerationInitial(images: allImages));
      return;
    }

    // رسالة المستخدم
    final userMessage = ImageGenerationEntities(
      requestText: prompt,
      image: Uint8List(0),
      isUser: true,
    );
    allImages.add(userMessage);

    // رسالة التحميل
    final loadingMessage = ImageGenerationEntities(
      requestText: "",
      image: Uint8List(0),
      isUser: false,
      isLoading: true,
    );
    allImages.add(loadingMessage);

    emit(ChatImageGenerationSuccess(images: allImages.reversed.toList()));

    final result = await imageGenerationUseCase.call(message: prompt);

    result.fold(
      (l) {
        allImages.removeWhere((e) => e.isLoading == true);
        allImages.add(ImageGenerationEntities(
          requestText: "",
          image: l,
          isUser: false,
        ));
        emit(ChatImageGenerationSuccess(images: allImages.reversed.toList()));
      },
      (r) {
        allImages.removeWhere((e) => e.isLoading == true);
        emit(ChatImageGenerationFailure(errorMessage: r.errorMessage));
      },
    );
  }
}
