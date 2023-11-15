import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:tukang_ojek/model/tukang_ojek.dart';
import 'package:tukang_ojek/model/transaksi.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Tukang Ojek'),
        ),
        body: MyHomePage(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            // Tambahkan kode untuk mengarahkan ke halaman form tambah tukang ojek
          },
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class ._MyHomePageState extends State<MyHomePage> {
  List<TukangOjek> tukangOjekList = [];
  Database? _database;

  @override
  void initState() {
    super.initState();
    initDatabase();
  }

  void initDatabase() async {
    Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentsDirectory.path, 'tukang_ojek.db');
    var database = await openDatabase(path, version: 1, onCreate: _createDb);
    setState(() {
      _database = database;
    });
    getData();
  }

  void _createDb(Database db, int newVersion) async {
    await db.execute('CREATE TABLE tukangojek(id INTEGER PRIMARY KEY, nama TEXT, nopol TEXT)');
    await db.execute('CREATE TABLE transaksi(id IN