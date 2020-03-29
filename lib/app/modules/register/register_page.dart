import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'register_controller.dart';

class RegisterPage extends StatefulWidget {
  final String title;
  const RegisterPage({Key key, this.title = "Register"}) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState
    extends ModularState<RegisterPage, RegisterController> {

  Widget headerContainer(String text) {
    return Container(
      padding: EdgeInsets.only(top: 25, left: 10),
      height: 45,
      width: double.infinity,
      color: Color(0xFFFAFAFF),
      child: Text(
        text,
        style: TextStyle(
          color: Color(0xFF9A99A2),
        ),
      ),
    );
  }

  Widget field(String fieldName, TextEditingController controller) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 14.0),
      child: TextField(
        controller: controller,
        cursorColor: Colors.black,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Color(0xFFAAAAAA),
            ),
            borderRadius: BorderRadius.circular(6.0),
          ),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.black,
              ),
              borderRadius: BorderRadius.circular(6.0)),
          hintText: fieldName,
          hintStyle: TextStyle(
              color: Color(0xFFAAAAAA),
              fontWeight: FontWeight.w500,
              fontSize: 18),
        ),
      ),
    );
  }

  Widget numberField(TextEditingController controller) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.3,
      padding: const EdgeInsets.only(bottom: 14.0),
      child: TextField(
        controller: controller,
        cursorColor: Colors.black,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Color(0xFFAAAAAA),
            ),
            borderRadius: BorderRadius.circular(6.0),
          ),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.black,
              ),
              borderRadius: BorderRadius.circular(6.0)),
          hintText: "Number",
          hintStyle: TextStyle(
              color: Color(0xFFAAAAAA),
              fontWeight: FontWeight.w500,
              fontSize: 18),
        ),
      ),
    );
  }

  Widget complementField(TextEditingController controller) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.55,
      padding: const EdgeInsets.only(bottom: 14.0),
      child: TextField(
        controller: controller,
        cursorColor: Colors.black,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Color(0xFFAAAAAA),
            ),
            borderRadius: BorderRadius.circular(6.0),
          ),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.black,
              ),
              borderRadius: BorderRadius.circular(6.0)),
          hintText: "Complement",
          hintStyle: TextStyle(
              color: Color(0xFFAAAAAA),
              fontWeight: FontWeight.w500,
              fontSize: 18),
        ),
      ),
    );
  }

  Widget registerButton(){
    //TODO Set onPressed function
    return ButtonTheme(
        height: 80,
        padding: EdgeInsets.all(0),
        child: FlatButton(
          onPressed: () {},
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Icon(Icons.check),
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * 0.20),
                child: Text(
                  "REGISTER USER",
                  style: TextStyle(fontSize: 23),
                ),
              ),
            ],
          ),
          color: Color(0xFFAAAAAA),
        ),
      );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Register New User",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        //TODO Set texts' controllers
        child: Column(
          children: <Widget>[
            headerContainer("PERSONAL DATA"),
            Padding(
              padding: const EdgeInsets.fromLTRB(14, 14, 14, 0),
              child: Column(
                children: <Widget>[
                  field("Name", null),
                  field("Email", null),
                  field("Phone", null),
                  field("Date of Birth", null),
                  field("CPF", null),
                ],
              ),
            ),
            headerContainer("ADDRESS DATA"),
            Padding(
              padding: const EdgeInsets.fromLTRB(14, 14, 14, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  field("CEP", null),
                  field("Street", null),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      numberField(null),
                      complementField(null),
                    ],
                  ),
                  field("District", null),
                  field("City", null),
                  field("State", null),
                ],
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.white,
      bottomNavigationBar: registerButton(),
    );
  }

}
