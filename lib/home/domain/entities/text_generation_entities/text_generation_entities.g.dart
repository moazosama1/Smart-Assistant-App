// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'text_generation_entities.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class TextGenerationEntitiesAdapter
    extends TypeAdapter<TextGenerationEntities> {
  @override
  final int typeId = 0;

  @override
  TextGenerationEntities read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return TextGenerationEntities(
      requestText: fields[1] as String,
      responseText: fields[0] as String,
      isUser: true
    );
  }

  @override
  void write(BinaryWriter writer, TextGenerationEntities obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.responseText)
      ..writeByte(1)
      ..write(obj.requestText)
      ..writeByte(2)
      ..write(obj.dateTime);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TextGenerationEntitiesAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
