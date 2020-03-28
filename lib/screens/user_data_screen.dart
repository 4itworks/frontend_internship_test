import 'package:flutter/material.dart';
import 'package:auro_avatar/auro_avatar.dart';

import '../models/user.dart';

class UserDataScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = ModalRoute.of(context).settings.arguments as User;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'User Data',
          style: TextStyle(fontSize: 24),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 265,
              width: MediaQuery.of(context).size.width,
              alignment: Alignment.center,
              child: InitialNameAvatar(
                user.name,
                circleAvatar: true,
                backgroundColor: user.color,
                textSize: 35,
                foregroundColor: Colors.white,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 30),
              child: Text(
                user.name,
                style: TextStyle(fontSize: 30),
              ),
            ),
            Container(
              alignment: Alignment.bottomLeft,
              padding: const EdgeInsets.only(left: 15),
              child: Text(
                'PERSONAL DATA',
                style: TextStyle(color: Colors.grey),
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15, top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Email:',
                        style: TextStyle(fontSize: 16),
                      ),
                      Text(
                        user.email,
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15, top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Phone:',
                        style: TextStyle(fontSize: 16),
                      ),
                      Text(
                        '+${user.phone[0] + user.phone[1]} (${user.phone[2] + user.phone[3]}) ${user.phone[4]}.${user.phone[5] + user.phone[6] + user.phone[7] + user.phone[8]}-${user.phone[9] + user.phone[10] + user.phone[11] + user.phone[12]}',
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15, top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Date of Birth:',
                        style: TextStyle(fontSize: 16),
                      ),
                      Text(
                        user.birth,
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15, right: 15, top: 20, bottom: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'CPF:',
                        style: TextStyle(fontSize: 16),
                      ),
                      Text(
                        '${user.cpf[0] + user.cpf[1] + user.cpf[2]}.${user.cpf[3] + user.cpf[4] + user.cpf[5]}.${user.cpf[6] + user.cpf[7] + user.cpf[8]}-${user.cpf[9] + user.cpf[10]}',
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              alignment: Alignment.bottomLeft,
              padding: const EdgeInsets.only(left: 15),
              child: Text(
                'ADDRESS DATA',
                style: TextStyle(color: Colors.grey),
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15, top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'CEP:',
                        style: TextStyle(fontSize: 16),
                      ),
                      Text(
                        '${user.aCep[0] + user.aCep[1] + user.aCep[2] + user.aCep[3] + user.aCep[4]}-${user.aCep[5] + user.aCep[6] + user.aCep[7]}',
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15, top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Street:',
                        style: TextStyle(fontSize: 16),
                      ),
                      Text(
                        user.aStreet,
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15, top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Number:',
                        style: TextStyle(fontSize: 16),
                      ),
                      Text(
                        user.aNumber,
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15, top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Complement:',
                        style: TextStyle(fontSize: 16),
                      ),
                      Text(
                        user.aComplement,
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15, top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'District:',
                        style: TextStyle(fontSize: 16),
                      ),
                      Text(
                        user.aDistrict,
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15, top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'City:',
                        style: TextStyle(fontSize: 16),
                      ),
                      Text(
                        user.aCity,
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15, top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'State:',
                        style: TextStyle(fontSize: 16),
                      ),
                      Text(
                        user.aState,
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
