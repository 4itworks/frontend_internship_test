import 'package:mobx/mobx.dart';

import 'view_models/user_view_model.dart';

part 'home_controller.g.dart';

class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {
  @observable
  ObservableFuture<List<UserViewModel>> users = ObservableFuture.value([]);
  
  @action
  Future fetchUsers() async {

  }
}
