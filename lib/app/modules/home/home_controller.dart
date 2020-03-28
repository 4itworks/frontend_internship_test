import 'package:frontent_internship_test/app/shared/models/user_model.dart';
import 'package:frontent_internship_test/app/shared/repositories/local_storage.dart/local_storage_hive.dart';
import 'package:mobx/mobx.dart';
part 'home_controller.g.dart';

class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {
  final LocalStorageHive storage;

  @observable
  ObservableFuture<List<UserModel>> users = ObservableFuture.value([]);
  
  _HomeControllerBase(this.storage){
    _init();
  }

  @action
  _init() async {
    List<UserModel> localList = await storage.get();
    if(localList.isNotEmpty){
      users = ObservableFuture.value(users.value..addAll(localList));
    }
  }
}
