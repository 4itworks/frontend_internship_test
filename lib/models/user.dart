import 'package:flutter/material.dart';

class User {
  //personal data
  final String name;
  final String email;
  final String phone;
  final String birth;
  final String cpf;
  //address data
  final String aCep;
  final String aStreet;
  final String aNumber;
  final String aComplement;
  final String aDistrict;
  final String aCity;
  final String aState;
  //color
  final Color color;

  const User({
    //personal data
    this.name,
    this.email,
    this.phone,
    this.birth,
    this.cpf,
    //address data
    this.aCep,
    this.aStreet,
    this.aNumber,
    this.aComplement,
    this.aDistrict,
    this.aCity,
    this.aState,
    //color
    this.color = Colors.blue,
  });
}
