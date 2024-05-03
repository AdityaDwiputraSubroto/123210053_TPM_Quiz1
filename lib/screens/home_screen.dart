import 'package:flutter/material.dart';
import 'package:quiz_mobile_053/screens/data_diri_screen.dart';
import 'package:quiz_mobile_053/screens/hari_screen.dart';
import 'package:quiz_mobile_053/screens/kubus_screen.dart';
import 'package:quiz_mobile_053/screens/trapesium_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Menu Utama'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => TrapesiumScreen()));
              },
              style: ElevatedButton.styleFrom(fixedSize: Size(200, 70)),
              child: Text(
                'Trapesium',
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => KubusScreen()));
              },
              style: ElevatedButton.styleFrom(fixedSize: Size(200, 70)),
              child: Text(
                'Kubus',
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HariScreen()));
              },
              style: ElevatedButton.styleFrom(fixedSize: Size(200, 70)),
              child: Text(
                'Penghitung Hari',
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => DataDiriScreen()));
              },
              style: ElevatedButton.styleFrom(fixedSize: Size(200, 70)),
              child: Text(
                'Data Diri',
              ),
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
