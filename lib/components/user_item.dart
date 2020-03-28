import 'package:flutter/material.dart';
import 'package:auro_avatar/auro_avatar.dart';
import '../models/user.dart';
import '../utils/app_routes.dart';

class UserItem extends StatelessWidget {
  final User user;

  const UserItem(
    this.user,
  );

  _selectUser(BuildContext context) {
    Navigator.of(context).pushNamed(
      AppRoutes.USER_DATA_SCREEN,
      arguments: user,
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.grey[900],
      highlightColor: Colors.grey[900],
      onTap: () => _selectUser(context),
      child: ListTile(
        contentPadding: EdgeInsets.all(0),
        leading: InitialNameAvatar(
          user.name,
          circleAvatar: true,
          backgroundColor: user.color,
          borderSize: 0.1,
          textSize: 24,
          foregroundColor: Colors.white,
        ),
        title: Text(
          user.name,
          style: TextStyle(
            fontSize: 19,
          ),
        ),
        subtitle: Text(
          user.email,
          style: TextStyle(fontSize: 15),
        ),
      ),
    );
  }
}
