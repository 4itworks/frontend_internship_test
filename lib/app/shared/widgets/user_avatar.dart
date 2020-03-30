import 'package:flutter/material.dart';

class UserAvatar extends StatelessWidget {
  final List<int> avatarColors;
  final String username;

  const UserAvatar({Key key, this.avatarColors, this.username})
      : super(key: key);

  String avatarName(String username) {
    String avatarName;
    try {
      var nameSplited = username.split(' ');
      int secondNameIndex = 2;
      if (nameSplited[1].length > 3) {
        secondNameIndex = 1;
      }
      avatarName = (nameSplited[0].substring(0, 1) +
              nameSplited[secondNameIndex].substring(0, 1))
          .toUpperCase();
    } catch (e) {
      avatarName = username.substring(0, 2);
    }
    return avatarName;
  }

  @override
  Widget build(BuildContext context) {
    final r = avatarColors[0];
    final g = avatarColors[1];
    final b = avatarColors[2];
    return Container(
      child: Center(
        child: Text(
          avatarName(username),
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 70,
          ),
        ),
      ),
      width: 150,
      height: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(99),
        color: Color.fromRGBO(r, g, b, 1),
      ),
    );
  }
}
