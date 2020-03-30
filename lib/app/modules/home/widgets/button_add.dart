import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class ButtonAddWidget extends StatelessWidget {

  final controller;

  const ButtonAddWidget({Key key, this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
    onPressed: (){
      Modular.to.pushNamed('/register');
    },
    label: Text(
      "Add User",
      style: TextStyle(fontSize: 16),
    ),
    icon: Icon(Icons.add),
  );
  }
}