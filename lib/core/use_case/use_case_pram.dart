import 'package:chat_bot_app/core/error/custom_failure.dart';
import 'package:dartz/dartz.dart';

abstract class UseCasePram<Type> {
  Future<Either<Type, Failure>> call({required String message});
}
