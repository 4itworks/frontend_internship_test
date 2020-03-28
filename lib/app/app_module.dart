import 'package:frontent_internship_test/app/app_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'package:frontent_internship_test/app/app_widget.dart';
import 'package:frontent_internship_test/app/modules/home/home_module.dart';
import 'shared/repositories/local_storage.dart/local_storage_hive.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        Bind((i) => AppController()),
        Bind((i) => LocalStorageHive()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, module: HomeModule()),
      ];

  @override
  Widget get bootstrap => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}
