import 'package:frontent_internship_test/app/shared/models/user_model.dart';
import 'package:frontent_internship_test/app/shared/repositories/local_storage.dart/local_storage_hive.dart';
import 'package:mobx/mobx.dart';
part 'user_store.g.dart';

class UserStore = _UserStoreBase with _$UserStore;

abstract class _UserStoreBase with Store {
  final LocalStorageHive storage;

  @observable
  ObservableFuture<List<UserModel>> users = ObservableFuture.value([]);

  _UserStoreBase(this.storage) {
    _init();
  }

  @action
  _init() async {
    List<UserModel> localList = await storage.get();
    if (localList.isNotEmpty) {
      users = ObservableFuture.value(
          users.value..addAll(localList.reversed.toList()));
    }
  }

  @action
  add(UserModel user) {
    List<UserModel> localList = users.value.reversed.toList();
    localList.add(user);
    users = ObservableFuture.value(localList.reversed.toList());
  }

  UserModel getAt(int id){
    print(users.value[id].name);
    return users.value.elementAt(id);
  }

}
