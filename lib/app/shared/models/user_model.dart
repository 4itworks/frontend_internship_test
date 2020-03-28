import 'package:hive/hive.dart';
part 'user_model.g.dart';

@HiveType(typeId: 0)
class UserModel extends HiveObject{

  @HiveField(0)
  String name;

  @HiveField(1)
  String email;

  @HiveField(2)
  String phone;

  @HiveField(3)
  String dateBirth;

  @HiveField(4)
  String cpf;

  @HiveField(5)
  String cep;

  @HiveField(6)
  String street;

  @HiveField(7)
  String number;

  @HiveField(8)
  String complement;

  @HiveField(9)
  String district;

  @HiveField(10)
  String city;

  @HiveField(11)
  String state;
}
