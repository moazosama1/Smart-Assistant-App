import 'package:hive_flutter/adapters.dart';
part 'text_generation_entities.g.dart';

@HiveType(typeId: 0)
class TextGenerationEntities extends HiveObject {
  @HiveField(0)
  final String responseText;
  @HiveField(1)
  final String requestText;
  @HiveField(2)
  int? dateTime = DateTime.now().millisecondsSinceEpoch;
  final bool isLoading;
  final bool isUser;
  TextGenerationEntities(
      {required this.requestText,
      required this.responseText,
      required this.isUser,
      this.isLoading = false});
}
