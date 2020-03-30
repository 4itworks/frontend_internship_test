import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:frontent_internship_test/app/modules/home/home_controller.dart';

class HomeBody extends StatelessWidget {
  final HomeController controller;
  const HomeBody({Key key, @required this.controller}) : super(key: key);

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

  Widget avatarImage(List<int> avatarColors, String username) {
    final r = avatarColors[0];
    final g = avatarColors[1];
    final b = avatarColors[2];
    return CircleAvatar(
      child: Text(
        avatarName(username),
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
      backgroundColor: Color.fromRGBO(r, g, b, 1),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) {
        return ListView.builder(
          itemCount: controller.store.users.value.length,
          itemBuilder: (context, index) {
            var user = controller.store.users.value[index];
            return ListTile(
              leading: avatarImage(user.colors, user.name),
              title: Text(user.name),
              subtitle: Text(user.email),
              onTap: () {
                //int id = controller.store.users.value.length - 1 - index;
                Modular.to.pushNamed('/user/', arguments: user);
              },
            );
          },
        );
      },
    );
  }
}
