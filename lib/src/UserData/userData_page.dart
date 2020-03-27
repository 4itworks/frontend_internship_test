import 'package:flutter/material.dart';
import 'package:frontent_internship_test/src/UserData/components/ContainerTop.dart';
import 'package:frontent_internship_test/src/UserData/components/Informations.dart';

class UserData extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.black,
        appBarTheme: AppBarTheme(color: Colors.white)
      ),
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(icon: Icon(Icons.navigate_before, size: 30.0, color: Colors.deepPurple), onPressed: () { Navigator.pop(context); }),
          title: Text("User Data", style: TextStyle(color: Colors.black),),
          elevation: 0,
          centerTitle: true,
        ),
        body: ListView(
          children: <Widget>[
            ContainerTopUser(),
            Informations()
          ],
        ),
      ),
    );
  }
}