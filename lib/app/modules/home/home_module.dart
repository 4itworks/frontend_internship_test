import 'package:frontent_internship_test/app/modules/home/home_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:frontent_internship_test/app/modules/home/home_page.dart';
import 'package:frontent_internship_test/app/shared/repositories/local_storage.dart/local_storage_hive.dart';

class HomeModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => HomeController(i.get<LocalStorageHive>())),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => HomePage()),
      ];

  static Inject get to => Inject<HomeModule>.of();
}
