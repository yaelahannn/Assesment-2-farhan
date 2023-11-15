class TukangOjek {
  int id;
  String nama;
  String nopol;

  TukangOjek({required this.id, required this.nama, required this.nopol});

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'nama': nama,
      'nopol': nopol,
    };
  }

  factory TukangOjek.fromMap(Map<String, dynamic> map) {
    return TukangOjek(
      id: map['id'],
      nama: map['nama'],
      nopol: map['nopol'],
    );
  }
}