import 'package:chat_bot_app/core/error/custom_failure.dart';
import 'package:chat_bot_app/core/use_case/use_case_pram.dart';
import 'package:chat_bot_app/home/domain/entities/text_generation_entities/text_generation_entities.dart';
import 'package:chat_bot_app/home/domain/repositories/home_repo.dart';
import 'package:dartz/dartz.dart';

class TextGenerationUseCase extends UseCasePram<TextGenerationEntities> {
  final HomeRepo homeRepo;
  TextGenerationUseCase({required this.homeRepo});

  @override
  Future<Either<TextGenerationEntities, Failure>> call(
      {required String message}) {
    return homeRepo.fetchFutureTextGeneration(message: message);
  }
}
