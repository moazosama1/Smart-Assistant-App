import 'dart:typed_data';

import 'package:chat_bot_app/core/error/custom_failure.dart';
import 'package:chat_bot_app/core/use_case/use_case_pram.dart';

import 'package:chat_bot_app/home/domain/repositories/home_repo.dart';
import 'package:dartz/dartz.dart';

class ImageGenerationUseCase extends UseCasePram<Uint8List> {
  final HomeRepo homeRepo;
  ImageGenerationUseCase({required this.homeRepo});

  @override
  Future<Either<Uint8List, Failure>> call(
      {required String message}) {
    return homeRepo.fetchFutureImageGeneration(prompt: message);
  }
}
