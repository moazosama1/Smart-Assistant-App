import 'package:chat_bot_app/core/error/custom_failure.dart';
import 'package:chat_bot_app/home/domain/entities/text_generation_entities/text_generation_entities.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<TextGenerationEntities, Failure>> fetchFutureTextGeneration(
      {required String message});
}
