import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
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

  int _increaseRGBValue(int value) {
    final increment = 100;
    final threshold = 100;
    if (value < threshold) {
      value += increment;
    }
    return value;
  }

  Widget avatarImage(String username) {
    final rand = Random();
    final r = _increaseRGBValue(rand.nextInt(256));
    final g = _increaseRGBValue(rand.nextInt(256));
    final b = _increaseRGBValue(rand.nextInt(256));
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
          itemCount: controller.users.value.length,
          itemBuilder: (context, index) {
            var user = controller.users.value[index];
            return ListTile(
              leading: avatarImage(user.name),
              title: Text(user.name),
              subtitle: Text(user.email),
            );
          },
        );
      },
    );
  }
}
