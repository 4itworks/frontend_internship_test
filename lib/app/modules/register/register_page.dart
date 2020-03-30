import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:frontent_internship_test/app/shared/widgets/header_container.dart';
import 'register_controller.dart';

class RegisterPage extends StatefulWidget {
  final String title;
  const RegisterPage({Key key, this.title = "Register"}) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState
    extends ModularState<RegisterPage, RegisterController> {
  bool validate = false;

  Widget field(String fieldName, TextEditingController fieldController,
      {TextInputType inputType = TextInputType.text,
      List<TextInputFormatter> inputFormatters,
      int maxLength = 40,
      FormFieldValidator<String> validator}) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 14.0),
      child: TextFormField(
        controller: fieldController,
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
        inputFormatters: inputFormatters,
        maxLength: maxLength,
        keyboardType: inputType,
        validator: validator,
        autovalidate: controller.allFilled()
              ? controller.emailIsOk ? true : false
              : false,
      ),
    );
  }

  Widget numberField(TextEditingController fieldController) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.3,
      padding: const EdgeInsets.only(bottom: 14.0),
      child: TextField(
        controller: fieldController,
        cursorColor: Colors.black,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Color(0xFFAAAAAA),
            ),
            borderRadius: BorderRadius.circular(6.0),
          ),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black),
              borderRadius: BorderRadius.circular(6.0)),
          hintText: "Number",
          hintStyle: TextStyle(
              color: Color(0xFFAAAAAA),
              fontWeight: FontWeight.w500,
              fontSize: 18),
        ),
        keyboardType: TextInputType.number,
        maxLength: 8,
      ),
    );
  }

  Widget complementField(TextEditingController fieldController) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.55,
      padding: const EdgeInsets.only(bottom: 14.0),
      child: TextField(
        controller: fieldController,
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
        maxLength: 30,
      ),
    );
  }

  Widget registerButton() {
    return ButtonTheme(
      height: 80,
      padding: EdgeInsets.all(0),
      child: Container(
        child: FlatButton(
          onPressed: controller.allFilled()
              ? controller.emailIsOk ? controller.saveUser : null
              : null,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Icon(
                  Icons.check,
                  color: Colors.white,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * 0.20),
                child: Text(
                  "REGISTER USER",
                  style: TextStyle(fontSize: 23, color: Colors.white),
                ),
              ),
            ],
          ),
          disabledColor: Color(0xFFAAAAAA),
        ),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFF1B5E20),
              Color(0xFF388E3C),
              Color(0xFF4CAF50),
            ],
            stops: [-0.0047, 0.5133, 1],
          ),
        ),
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
        leading: BackButton(
          color: Colors.black,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            HeaderContainer(text: "PERSONAL DATA"),
            Padding(
              padding: const EdgeInsets.fromLTRB(14, 14, 14, 0),
              child: Column(
                children: <Widget>[
                  field("Name", controller.nameController, maxLength: 60),
                  field("Email", controller.emailController,
                      inputType: TextInputType.emailAddress,
                      validator: (value) {
                    return value.contains("@")
                        ? null
                        : "That email is not valid";
                  }),
                  field("Phone", controller.phoneController,
                      inputType: TextInputType.phone,
                      inputFormatters: [
                        MaskTextInputFormatter(
                            mask: '+## (##) #.####-####',
                            filter: {"#": RegExp(r'[0-9]')})
                      ],
                      maxLength: 20, validator: (value) {
                    return value.length < 20
                        ? "That phone number is not valid"
                        : null;
                  }),
                  field("Date of Birth", controller.dateController,
                      inputType: TextInputType.number,
                      inputFormatters: [
                        MaskTextInputFormatter(
                            mask: '##/##/####', filter: {"#": RegExp(r'[0-9]')})
                      ],
                      maxLength: 10, validator: (value) {
                    return value.length < 10 ? "That date is not valid" : null;
                  }),
                  field("CPF", controller.cpfController,
                      inputType: TextInputType.number,
                      inputFormatters: [
                        MaskTextInputFormatter(
                            mask: '###.###.###-##',
                            filter: {"#": RegExp(r'[0-9]')})
                      ],
                      maxLength: 14, validator: (value) {
                    return value.length < 14 ? "That CPF is not valid" : null;
                  }),
                ],
              ),
            ),
            HeaderContainer(text: "ADDRESS DATA"),
            Padding(
              padding: const EdgeInsets.fromLTRB(14, 14, 14, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  field("CEP", controller.cepController,
                      inputType: TextInputType.number,
                      inputFormatters: [
                        MaskTextInputFormatter(
                            mask: '#####-###', filter: {"#": RegExp(r'[0-9]')})
                      ],
                      maxLength: 9, validator: (value) {
                    return value.length < 9 ? "That CEP is not valid" : null;
                  }),
                  field("Street", controller.streetController),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      numberField(controller.numberController),
                      complementField(controller.complementController),
                    ],
                  ),
                  field("District", controller.districtController),
                  field("City", controller.cityController),
                  field("State", controller.stateController),
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
