import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:frontent_internship_test/app/modules/home/pages/user_page_controller.dart';
import 'package:frontent_internship_test/app/shared/models/user_model.dart';
import 'package:frontent_internship_test/app/shared/widgets/header_container.dart';

class UserPage extends StatefulWidget {
  final UserModel user;

  UserPage({Key key, this.user}) : super(key: key);

  @override
  _UserPageState createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  Widget profileField(String fieldName, String fieldContent) {
    return Wrap(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.fromLTRB(10, 10, 10, 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                fieldName,
                style: TextStyle(fontSize: 17),
              ),
              Text(
                fieldContent,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
              ),
            ],
          ),
        ),
        Divider(
          thickness: 1,
          height: 10,
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "User Data",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
      ),
      body: ListView(
        children: <Widget>[
          HeaderContainer(text: "PERSONAL DATA"),
          profileField("Email", widget.user.email),
          profileField("Phone", widget.user.phone),
          profileField("Date of Birth", widget.user.dateBirth),
          profileField("CPF", widget.user.cpf),
          HeaderContainer(text: "ADDRESS DATA"),
          profileField("CEP", widget.user.cep),
          profileField("Street", widget.user.street),
          profileField("Number", widget.user.number),
          profileField("Complement", widget.user.complement),
        ],
      ),
      backgroundColor: Colors.white,
    );
  }
}
