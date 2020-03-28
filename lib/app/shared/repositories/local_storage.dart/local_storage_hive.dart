import 'dart:async';
import 'package:frontent_internship_test/app/shared/constants.dart';
import 'package:frontent_internship_test/app/shared/models/user_model.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

class LocalStorageHive {
  Completer<Box> _instance = Completer<Box>();

  _init() async {
    await Hive.initFlutter();
    Hive.registerAdapter(UserModelAdapter());
    var box = await Hive.openBox<UserModel>(DB_NAME);
    _instance.complete(box);
  }

  LocalStorageHive(){
    _init();
  }

  Future<List<UserModel>> get() async{
    var box = await _instance.future;
    return HiveList(box).reversed.toList().cast<UserModel>();
    //return box.values.toList().cast<UserModel>();
  }

  Future<UserModel> getAt(int index) async {
    var box = await _instance.future;
    return box.getAt(index);
  }

  Future save(UserModel user) async {
    var box = await _instance.future;
    box.add(user);
  }

}