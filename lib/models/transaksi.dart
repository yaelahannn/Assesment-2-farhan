class Transaksi {
  int id;
  int tukangojek_id;
  int harga;
  String timestamp;

  Transaksi({required this.id, required this.tukangojek_id, required this.harga, required this.timestamp});

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'tukangojek_id': tukangojek_id,
      'harga': harga,
      'timestamp': timestamp,
    };
  }

  factory Transaksi.fromMap(Map<String, dynamic> map) {
    return Transaksi(
        id: map['id'],
        tukangojek_id: map['tukangojek_id'],
        harga: map['harga'],