import 'package:flutter/material.dart';

class DataDiriScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Data Diri'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 80,
              backgroundImage: AssetImage('assets/pp.png'),
            ),
            SizedBox(height: 20),
            InfoDiriItem('NIM', '123210053'),
            InfoDiriItem('Nama', 'Aditya Dwiputra Subroto'),
            InfoDiriItem('Kelas', 'TPM IF-C'),
            InfoDiriItem('Hobi', 'Gaming'),
          ],
        ),
      ),
    );
  }

  Widget InfoDiriItem(String title, String text) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            text,
            style: TextStyle(
              fontSize: 18,
            ),
          ),
        ],
      ),
    );
  }
}
