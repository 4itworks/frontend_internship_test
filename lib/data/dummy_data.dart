import 'package:flutter/material.dart';

import '../models/user.dart';

const DUMMY_USERS = const [
  User(
    name: 'Monica Trott',
    email: 'monica.trott@email.com',
    phone: '5585988222555',
    birth: '16/04/1986',
    cpf: '64836714745',
    aCep: '22640102',
    aStreet: 'Av. das Américas',
    aNumber: '3900',
    aComplement: 'Loja 102',
    aDistrict: 'Barra de Tijuca',
    aCity: 'Rio de Janeiro',
    aState: 'Rio de Janeiro',
    color: Colors.purple,
  ),
  User(
    name: 'John Doe',
    email: 'john.doe@email.com',
    phone: '5585958472614',
    birth: '25/02/1995',
    cpf: '61946717215',
    aCep: '22540103',
    aStreet: 'Av. Ásia',
    aNumber: '25',
    aComplement: 'Apartamento 102',
    aDistrict: 'Bairro Teste',
    aCity: 'São Paulo',
    aState: 'São Paulo',
    color: Colors.pink,
  ),
];
