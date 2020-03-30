import 'package:flutter_modular/flutter_modular.dart';
import 'package:frontent_internship_test/app/shared/models/user_model.dart';
import 'package:frontent_internship_test/app/shared/repositories/local_storage.dart/local_storage_hive.dart';
import 'package:frontent_internship_test/app/shared/store/user_store.dart';
import 'package:mobx/mobx.dart';
part 'user_page_controller.g.dart';

class UserPageController = _UserPageControllerBase with _$UserPageController;

abstract class _UserPageControllerBase with Store {
  final int id;
  final UserStore store = Modular.get<UserStore>();

  @observable
  UserModel user = UserModel();

  _UserPageControllerBase(this.id);

  bool get() {
    print("LISTA: ${store.users.value.isEmpty}, NOME DO 0: ${store.users.value[0].name}");
  }

  @action
  _init() {
    user = store.getAt(id);
  }
}
