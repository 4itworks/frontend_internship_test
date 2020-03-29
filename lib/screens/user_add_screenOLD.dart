import 'package:flutter/material.dart';

class UserAddScreen extends StatefulWidget {
  final void Function(
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
      String aState) onSubmit;

  const UserAddScreen(this.onSubmit);

  @override
  _UserAddScreenState createState() => _UserAddScreenState();
}

class _UserAddScreenState extends State<UserAddScreen> {
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _phoneController = TextEditingController();
  final _birthController = TextEditingController();
  final _cpfController = TextEditingController();

  final _aCepController = TextEditingController();
  final _aStreetController = TextEditingController();
  final _aNumberController = TextEditingController();
  final _aComplementController = TextEditingController();
  final _aDistrictController = TextEditingController();
  final _aCityController = TextEditingController();
  final _aStateController = TextEditingController();

  _submitForm() {
    final name = _nameController.text;
    final email = _emailController.text;
    final phone = _phoneController.text;
    final birth = _birthController.text;
    final cpf = _cpfController.text;

    final aCep = _aCepController.text;
    final aStreet = _aStreetController.text;
    final aNumber = _aNumberController.text;
    final aComplement = _aComplementController.text;
    final aDistrict = _aDistrictController.text;
    final aCity = _aCityController.text;
    final aState = _aStateController.text;

    if (name.isEmpty ||
        phone.length != 13 ||
        cpf.length != 11 ||
        aCep.length != 8) {
      return;
    }

    widget.onSubmit(name, email, phone, birth, cpf, aCep, aStreet, aNumber,
        aComplement, aDistrict, aCity, aState);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Register New User'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              alignment: Alignment.bottomLeft,
              padding: const EdgeInsets.only(top: 25, left: 15),
              child: Text(
                'PERSONAL DATA',
                style: TextStyle(color: Colors.grey),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: TextField(
                controller: _nameController,
                onSubmitted: (_) => _submitForm(),
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Name',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 15, left: 15, right: 15),
              child: TextField(
                controller: _emailController,
                onSubmitted: (_) => _submitForm(),
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Email',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 15, left: 15, right: 15),
              child: TextField(
                controller: _phoneController,
                onSubmitted: (_) => _submitForm(),
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Phone',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 15, left: 15, right: 15),
              child: TextField(
                controller: _birthController,
                onSubmitted: (_) => _submitForm(),
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Date of Birth',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 15, left: 15, right: 15),
              child: TextField(
                controller: _cpfController,
                onSubmitted: (_) => _submitForm(),
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'CPF',
                ),
              ),
            ),
            Container(
              alignment: Alignment.bottomLeft,
              padding: const EdgeInsets.only(top: 20, left: 15),
              child: Text(
                'ADDRESS DATA',
                style: TextStyle(color: Colors.grey),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: TextField(
                controller: _aCepController,
                onSubmitted: (_) => _submitForm(),
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'CEP',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 15, left: 15, right: 15),
              child: TextField(
                controller: _aStreetController,
                onSubmitted: (_) => _submitForm(),
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Street',
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.3,
                    height: 55,
                    child: TextField(
                      controller: _aNumberController,
                      onSubmitted: (_) => _submitForm(),
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Number',
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 15),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.6,
                    height: 55,
                    child: TextField(
                      controller: _aComplementController,
                      onSubmitted: (_) => _submitForm(),
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Complement',
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: TextField(
                controller: _aDistrictController,
                onSubmitted: (_) => _submitForm(),
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'District',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 15, left: 15, right: 15),
              child: TextField(
                controller: _aCityController,
                onSubmitted: (_) => _submitForm(),
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'City',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 15, left: 15, right: 15),
              child: TextField(
                controller: _aStateController,
                onSubmitted: (_) => _submitForm(),
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'State',
                ),
              ),
            ),
            SizedBox(
              height: 60,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          final name = _nameController.text;
          final email = _emailController.text;
          final phone = _phoneController.text;
          final birth = _birthController.text;
          final cpf = _cpfController.text;

          final aCep = _aCepController.text;
          final aStreet = _aStreetController.text;
          final aNumber = _aNumberController.text;
          final aComplement = _aComplementController.text;
          final aDistrict = _aDistrictController.text;
          final aCity = _aCityController.text;
          final aState = _aStateController.text;
          widget.onSubmit(name, email, phone, birth, cpf, aCep, aStreet,
              aNumber, aComplement, aDistrict, aCity, aState);
        },
        icon: Icon(
          Icons.check,
          color: Colors.white,
        ),
        label: Text(
          'REGISTER USER',
          style: TextStyle(color: Colors.white, fontSize: 16),
        ),
        backgroundColor: Colors.grey[700],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
