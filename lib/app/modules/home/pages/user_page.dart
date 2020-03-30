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
      body: Observer(builder: (_) {
        return widget.user.name != null
            ? ListView(
                children: <Widget>[
                  HeaderContainer(text: "PERSONAL DATA"),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text("Email:"),
                      Text(widget.user.name,
                          style: TextStyle(fontWeight: FontWeight.bold)),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text("Phone:"),
                      Text(widget.user.phone,
                          style: TextStyle(fontWeight: FontWeight.bold)),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text("Date of Birth:"),
                      Text(widget.user.dateBirth,
                          style: TextStyle(fontWeight: FontWeight.bold)),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text("CPF:"),
                      Text(
                        widget.user.cpf,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  HeaderContainer(text: "ADDRESS DATA"),
                ],
              )
            : Column(
                children: <Widget>[
                  Center(
                    child: CircularProgressIndicator(),
                  ),
                ],
              );
      }),
      backgroundColor: Colors.white,
    );
  }
}
