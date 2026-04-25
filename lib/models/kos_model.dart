class KosModel {
  String nama;
  int harga;
  String lokasi;
  double rating;
  bool verified;

  KosModel({
    required this.nama,
    required this.harga,
    required this.lokasi,
    this.rating = 4.0,
    this.verified = true,
  });
}
