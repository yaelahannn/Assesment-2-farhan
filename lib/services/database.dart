import 'package:sqflite/sqflite.dart';

class DatabaseHelper {
  late Database _database;

  // Inisialisasi database
  Future<void> initializeDatabase() async {
    // Implementasi inisialisasi database
  }

  // Mendapatkan list tukang ojek dari database
  Future<List<TukangOjek>> getTukangOjekList() async {
    // Implementasi untuk mendapatkan list tukang ojek dari database
    return [];
  }

  // Menambah tukang ojek ke database
  Future<int> addTukangOjek(TukangOjek tukangOjek) async {
    // Implementasi untuk menambah tukang ojek ke database
    return 0;
  }

  // Menambah transaksi ke database
  Future<int> addTransaksi(Transaksi transaksi) async {
    // Implementasi untuk menambah transaksi ke database
    return 0;
  }

  // Mendapatkan transaksi berdasarkan tukang ojek ID
  Future<List<Transaksi>> getTransaksiByTukangOjekId(int tukangOjekId) async {
    // Implementasi untuk mendapatkan transaksi berdasarkan tukang ojek ID
    return [];
  }
}
