class Part {
  String? text;

  Part({this.text});

  factory Part.fromJson(
      Map<String, dynamic> json) {
    return Part(
      text: json['text'] as String?,
    );
  }

  Map<String, dynamic>
      toJson() {
    return {
      'text': text,
    };
  }
}
