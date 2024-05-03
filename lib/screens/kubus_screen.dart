import 'package:flutter/material.dart';

class KubusScreen extends StatefulWidget {
  @override
  _KubusScreenState createState() => _KubusScreenState();
}

class _KubusScreenState extends State<KubusScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController _sisiController = TextEditingController();
  String _volume = '';
  String _keliling = '';

  void _hitungVolume() {
    if (_formKey.currentState!.validate()) {
      double sisi = double.tryParse(_sisiController.text) ?? 0.0;
      double volume = sisi * sisi * sisi;
      setState(() {
        _volume = volume.toString();
      });
    }
  }

  void _hitungKeliling() {
    if (_formKey.currentState!.validate()) {
      double sisi = double.tryParse(_sisiController.text) ?? 0.0;
      double keliling = 12 * sisi;
      setState(() {
        _keliling = keliling.toString();
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
        title: Text('Menu Kubus'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              TextFormField(
                controller: _sisiController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(labelText: 'Rusuk'),
                validator: _validateInput,
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  _hitungVolume();
                },
                child: Text('Hitung Volume'),
              ),
              SizedBox(height: 10),
              Text('Volume: $_volume'),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  _hitungKeliling();
                },
                child: Text('Hitung Keliling'),
              ),
              SizedBox(height: 10),
              Text('Keliling: $_keliling'),
            ],
          ),
        ),
      ),
    );
  }
}
