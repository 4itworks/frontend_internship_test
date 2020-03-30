import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:frontent_internship_test/app/shared/models/user_model.dart';
import 'package:frontent_internship_test/app/shared/repositories/local_storage.dart/local_storage_hive.dart';
import 'package:frontent_internship_test/app/shared/store/user_store.dart';
import 'package:mobx/mobx.dart';

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

  @observable
  bool disableRegister = true;

  _RegisterControllerBase(this.storage, this.store) {
    //await _initControllers
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

  void saveUser() async {
    var user = UserModel()
      ..name = nameController.text
      ..email = emailController.text
      ..phone = phoneController.text
      ..dateBirth = dateController.text
      ..cpf = cpfController.text
      ..cep = cepController.text
      ..street = streetController.text
      ..district = districtController.text
      ..city = cityController.text
      ..state = stateController.text
      ..colors = UserAvatarColors.get();
    store.add(user);
    await storage.save(user);
    //Modular.to.pushNamedAndRemoveUntil('/', (route) => false);
    Modular.to.pop();
  }

  /*
  Future _initController() async {
    nameController.addListener(({
      
    }));
  }
  */
}
