import 'package:flutter/material.dart';
import 'package:tukang_ojek/model/tukang_ojek.dart';

class TambahTukangOjek extends StatefulWidget {
  @override
  _TambahTukangOjekState createState() => _TambahTukangOjekState();
}

class _TambahTukangOjekState extends State<TambahTukangOjek> {
  TextEditingController _namaController = TextEditingController();
  TextEditingController _nopolController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tambah Tukang Ojek'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _namaController,
              decoration: InputDecoration(labelText: 'Nama'),
            ),
            TextField(
              controller: _nopolController,
              decoration: InputDecoration(labelText: 'Nopol'),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                // Tambahkan kode untuk menambahkan tukang ojek baru ke database
              },
              child: Text('Tambah'),
            ),
          ],
        ),
      ),
    );
  }
}