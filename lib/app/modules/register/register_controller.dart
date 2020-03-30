import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:frontent_internship_test/app/shared/models/user_model.dart';
import 'package:frontent_internship_test/app/shared/repositories/local_storage.dart/local_storage_hive.dart';
import 'package:frontent_internship_test/app/shared/store/user_store.dart';
import 'utils/user_avatar_colors.dart';
part 'register_controller.g.dart';

class RegisterController = _RegisterControllerBase with _$RegisterController;

abstract class _RegisterControllerBase with Store {
  final LocalStorageHive storage;
  final UserStore store;

  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final phoneController = TextEditingController();
  final dateController = TextEditingController();
  final cpfController = TextEditingController();
  final cepController = TextEditingController();
  final streetController = TextEditingController();
  final numberController = TextEditingController();
  final complementController = TextEditingController();
  final districtController = TextEditingController();
  final cityController = TextEditingController();
  final stateController = TextEditingController();

  @observable
  ObservableList<TextEditingController> controllers =
      <TextEditingController>[].asObservable();

  bool allFilled() {
    if (controllers.isNotEmpty) {
      var able = true;
      controllers.forEach((c) {
        if (c.text.isEmpty) {
          able = false;
        }
      });
      return able;
    }
    return false;
  }

  _RegisterControllerBase(this.storage, this.store) {
    _initControllers();
  }

  void saveUser() async {
    var user = UserModel()
      ..name = nameController.text
      ..email = emailController.text
      ..phone = phoneController.text
      ..dateBirth = dateController.text
      ..cpf = cpfController.text
      ..cep = cepController.text
      ..street = streetController.text
      ..number = numberController.text
      ..complement = complementController.text
      ..district = districtController.text
      ..city = cityController.text
      ..state = stateController.text
      ..colors = UserAvatarColors.get();
    store.add(user);
    await storage.save(user);
    Modular.to.pop();
  }

  @observable
  bool emailIsOk = false;

  Future _initControllers() async {
    await _initListeners();
    controllers = <TextEditingController>[
      nameController,
      emailController,
      phoneController,
      dateController,
      cpfController,
      cepController,
      streetController,
      districtController,
      cityController,
      stateController
    ].asObservable();
  }

  Future _initListeners() async {
    emailController.addListener(() {
      emailIsOk = emailController.text.contains("@");
    });
  }

}
