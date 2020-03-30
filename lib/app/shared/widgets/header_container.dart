import 'package:flutter/material.dart';

class HeaderContainer extends StatelessWidget {
  final String text;

  const HeaderContainer({Key key, this.text}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
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
}