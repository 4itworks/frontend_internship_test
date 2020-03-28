// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class UserModelAdapter extends TypeAdapter<UserModel> {
  @override
  final typeId = 0;

  @override
  UserModel read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return UserModel()
      ..name = fields[0] as String
      ..email = fields[1] as String
      ..phone = fields[2] as String
      ..dateBirth = fields[3] as String
      ..cpf = fields[4] as String
      ..cep = fields[5] as String
      ..street = fields[6] as String
      ..number = fields[7] as String
      ..complement = fields[8] as String
      ..district = fields[9] as String
      ..city = fields[10] as String
      ..state = fields[11] as String;
  }

  @override
  void write(BinaryWriter writer, UserModel obj) {
    writer
      ..writeByte(12)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.email)
      ..writeByte(2)
      ..write(obj.phone)
      ..writeByte(3)
      ..write(obj.dateBirth)
      ..writeByte(4)
      ..write(obj.cpf)
      ..writeByte(5)
      ..write(obj.cep)
      ..writeByte(6)
      ..write(obj.street)
      ..writeByte(7)
      ..write(obj.number)
      ..writeByte(8)
      ..write(obj.complement)
      ..writeByte(9)
      ..write(obj.district)
      ..writeByte(10)
      ..write(obj.city)
      ..writeByte(11)
      ..write(obj.state);
  }
}
