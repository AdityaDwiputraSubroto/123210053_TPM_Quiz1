import 'package:flutter/material.dart';

class HariScreen extends StatefulWidget {
  @override
  _HariScreenState createState() => _HariScreenState();
}

class _HariScreenState extends State<HariScreen> {
  int selectedNumber = 1;
  List<String> days = [
    'Senin',
    'Selasa',
    'Rabu',
    'Kamis',
    'Jumat',
    'Sabtu',
    'Minggu',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Menu Penghitung Hari'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Pilih angka 1-7',
              style: TextStyle(fontSize: 20.0),
            ),
            SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                DropdownButton<int>(
                  value: selectedNumber,
                  onChanged: (value) {
                    setState(() {
                      selectedNumber = value!;
                    });
                  },
                  items: List.generate(
                    7,
                    (index) => DropdownMenuItem<int>(
                      value: index + 1,
                      child: Text('${index + 1}'),
                    ),
                  ),
                ),
                SizedBox(width: 20.0),
                Text(
                  'Hari: ${days[selectedNumber - 1]}',
                  style: TextStyle(fontSize: 18.0),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
