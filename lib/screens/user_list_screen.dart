import 'package:flutter/material.dart';
import 'package:frontent_internship_test/data/dummy_data.dart';

import '../models/user.dart';
import '../components/user_item.dart';
import './user_add_screen.dart';

class UserListScreen extends StatefulWidget {
  @override
  _UserListScreenState createState() => _UserListScreenState();
}

class _UserListScreenState extends State<UserListScreen> {
  final List<User> _users = DUMMY_USERS;

  _addUser(
      String name,
      String email,
      String phone,
      String birth,
      String cpf,
      String aCep,
      String aStreet,
      String aNumber,
      String aComplement,
      String aDistrict,
      String aCity,
      String aState) {
    final newUser = User(
      name: name,
      email: email,
      phone: phone,
      birth: birth,
      cpf: cpf,
      aCep: aCep,
      aStreet: aStreet,
      aNumber: aNumber,
      aComplement: aComplement,
      aDistrict: aDistrict,
      aCity: aCity,
      aState: aState,
    );

    setState(() {
      _users.add(newUser);
    });

    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'User List',
        ),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: _users.length,
        itemBuilder: (ctx, index) {
          final ur = _users[index];
          return UserItem(ur);
        },
      ),
      floatingActionButton: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(50)),
          gradient: LinearGradient(
            begin: Alignment(-1, -5),
            end: Alignment(1, 2),
            colors: [Colors.blue[600], Colors.purple],
          ),
        ),
        child: FloatingActionButton.extended(
          onPressed: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => UserAddScreen(_addUser),
            ),
          ),
          icon: Icon(
            Icons.add,
            color: Colors.white,
          ),
          label: Text(
            'Add User',
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
          backgroundColor: Colors.transparent,
        ),
      ),
    );
  }
}
