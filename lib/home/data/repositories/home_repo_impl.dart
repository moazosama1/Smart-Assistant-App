import 'dart:developer';

import 'package:chat_bot_app/core/error/custom_failure.dart';
import 'package:chat_bot_app/home/data/data_source/remote/home_remote_data.dart';
import 'package:chat_bot_app/home/domain/entities/text_generation_entities/text_generation_entities.dart';
import 'package:chat_bot_app/home/domain/repositories/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl extends HomeRepo {
  final HomeRemoteData homeRemoteData;

  HomeRepoImpl({required this.homeRemoteData});
  @override
  Future<Either<TextGenerationEntities, Failure>> fetchFutureTextGeneration(
      {required String message}) async {
    try {
      var response = await homeRemoteData.fetchTextGeneration(message: message);
      return left(response);
    } catch (e) {
      if (e is DioException) {
        return right(ServerFailure.fromDio(e));
      } else {
        log(e.toString());
        return right(ServerFailure(errorMessage: e.toString()));
      }
    }
  }
}
