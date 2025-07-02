import 'dart:typed_data';

class ImageGenerationEntities {
  final String requestText;
  final Uint8List image;
  final bool isUser;
  final bool isLoading;

  ImageGenerationEntities({
    required this.requestText,
    required this.image,
    this.isUser = false,
    this.isLoading = false,
  });
}
