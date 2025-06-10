import 'package:chat_bot_app/core/api_services/api_keys.dart';
import 'package:chat_bot_app/core/api_services/constant_api.dart';
import 'package:dio/dio.dart';

class ApiServices {
  final Dio dio;
  ApiServices({
    required this.dio,
  });
  post({required String endPoint, required Map<String, dynamic> data}) async {
    final response = await dio.post(
      "${ConstantApi.baseUrl}$endPoint${ApiKeys.apiKey}",
      data: data ,
      options: Options(
        headers: {
          "Content-Type": "application/json",
        },
      ),
    );
    return response.data;
  }
}
