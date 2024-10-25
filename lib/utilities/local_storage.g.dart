// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'local_storage.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class LocalStorageAdapter extends TypeAdapter<LocalStorage> {
  @override
  final int typeId = 1;

  @override
  LocalStorage read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return LocalStorage(
      localStorage: fields[0] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, LocalStorage obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.localStorage);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is LocalStorageAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
