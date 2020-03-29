import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:frontent_internship_test/app/modules/home/widgets/home_body.dart';
import 'home_controller.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

Widget homeAppBar(){
  return AppBar(
        title: Text(
          "User List",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
      );
}

Widget buttonAdd(controller) {
  return FloatingActionButton.extended(
    onPressed: (){},
    label: Text(
      "Add User",
      style: TextStyle(fontSize: 16),
    ),
    icon: Icon(Icons.add),
  );
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: homeAppBar(),
      body: HomeBody(controller: controller),
      floatingActionButton: buttonAdd(controller),
      backgroundColor: Colors.white,
    );
  }
}
