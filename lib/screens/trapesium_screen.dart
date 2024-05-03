import 'package:flutter/material.dart';

class TrapesiumScreen extends StatefulWidget {
  @override
  _TrapesiumScreenState createState() => _TrapesiumScreenState();
}

class _TrapesiumScreenState extends State<TrapesiumScreen> {
  final GlobalKey<FormState> _luasFormKey = GlobalKey<FormState>();
  final GlobalKey<FormState> _kelilingFormKey = GlobalKey<FormState>();

  TextEditingController _sisiAtasLuasController = TextEditingController();
  TextEditingController _sisiBawahLuasController = TextEditingController();
  TextEditingController _tinggiLuasController = TextEditingController();

  TextEditingController _sisiKananKelilingController = TextEditingController();
  TextEditingController _sisiAtasKelilingController = TextEditingController();
  TextEditingController _sisiBawahKelilingController = TextEditingController();
  TextEditingController _sisiKiriKelilingController = TextEditingController();

  String _luasResult = '';
  String _kelilingResult = '';

  void _hitungLuas() {
    if (_luasFormKey.currentState!.validate()) {
      double sisiAtas = double.parse(_sisiAtasLuasController.text);
      double sisiBawah = double.parse(_sisiBawahLuasController.text);
      double tinggi = double.parse(_tinggiLuasController.text);
      double luas = ((sisiAtas + sisiBawah) / 2) * tinggi;
      setState(() {
        _luasResult = luas.toString();
      });
    }
  }

  void _hitungKeliling() {
    if (_kelilingFormKey.currentState!.validate()) {
      double sisiKanan = double.parse(_sisiKananKelilingController.text);
      double sisiKiri = double.parse(_sisiKiriKelilingController.text);
      double sisiAtas = double.parse(_sisiAtasKelilingController.text);
      double sisiBawah = double.parse(_sisiBawahKelilingController.text);
      double keliling = sisiKanan + sisiKiri + sisiAtas + sisiBawah;
      setState(() {
        _kelilingResult = keliling.toString();
      });
    }
  }

  String? _validateInput(String? value) {
    if (value!.isEmpty) {
      return 'Field tidak boleh kosong';
    }
    if (double.tryParse(value) == null) {
      return 'Masukkan angka yang valid';
    }
    double number = double.parse(value);
    if (number <= 0) {
      return 'Masukkan angka yang lebih besar dari 0';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Menu Trapesium'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Form(
              key: _luasFormKey,
              child: Column(
                children: <Widget>[
                  TextFormField(
                    controller: _sisiAtasLuasController,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(labelText: 'Sisi Atas'),
                    validator: _validateInput,
                  ),
                  TextFormField(
                    controller: _sisiBawahLuasController,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(labelText: 'Sisi Bawah'),
                    validator: _validateInput,
                  ),
                  TextFormField(
                    controller: _tinggiLuasController,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(labelText: 'Tinggi'),
                    validator: _validateInput,
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      _hitungLuas();
                    },
                    child: Text('Hitung Luas'),
                  ),
                  SizedBox(height: 10),
                  Text('Luas: $_luasResult'),
                ],
              ),
            ),
            SizedBox(height: 20),
            Form(
              key: _kelilingFormKey,
              child: Column(
                children: <Widget>[
                  TextFormField(
                    controller: _sisiKiriKelilingController,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(labelText: 'Sisi Kiri'),
                    validator: _validateInput,
                  ),
                  TextFormField(
                    controller: _sisiKananKelilingController,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(labelText: 'Sisi Kanan'),
                    validator: _validateInput,
                  ),
                  TextFormField(
                    controller: _sisiAtasKelilingController,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(labelText: 'Sisi Atas'),
                    validator: _validateInput,
                  ),
                  TextFormField(
                    controller: _sisiBawahKelilingController,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(labelText: 'Sisi Bawah'),
                    validator: _validateInput,
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      _hitungKeliling();
                    },
                    child: Text('Hitung Keliling'),
                  ),
                  SizedBox(height: 10),
                  Text('Keliling: $_kelilingResult'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
