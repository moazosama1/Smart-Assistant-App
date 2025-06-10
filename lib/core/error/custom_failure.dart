// ignore: file_names
import 'package:dio/dio.dart';

abstract class Failure {
  final String errorMessage;

  Failure({required this.errorMessage});
}

class ServerFailure extends Failure {
  ServerFailure({required super.errorMessage});

  factory ServerFailure.fromDio(DioException dioError) {
    switch (dioError.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure(
            errorMessage: "Connection timeout. Please try again.");
      case DioExceptionType.sendTimeout:
        return ServerFailure(errorMessage: "Send timeout. Please try again.");
      case DioExceptionType.receiveTimeout:
        return ServerFailure(
            errorMessage: "Receive timeout. Please try again.");
      case DioExceptionType.badCertificate:
        return ServerFailure(
            errorMessage:
                "Bad certificate. Unable to establish a secure connection.");
      case DioExceptionType.badResponse:
        final statusCode = dioError.response?.statusCode;
        final message =
            dioError.response?.statusMessage ?? "Bad response from server.";
        return ServerFailure(
            errorMessage:
                "Bad response (${statusCode ?? "unknown"}): $message");
      case DioExceptionType.cancel:
        return ServerFailure(errorMessage: "Request was cancelled.");
      case DioExceptionType.connectionError:
        return ServerFailure(
            errorMessage:
                "Connection error. Please check your internet connection.");
      case DioExceptionType.unknown:
      return ServerFailure(errorMessage: "An unknown error occurred.");
    }
  }
}
