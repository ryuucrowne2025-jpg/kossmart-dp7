import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../models/kos_model.dart';

class DetailView extends StatelessWidget {
  final KosModel data;

  DetailView({required this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(data.nama)),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              data.nama,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),

            SizedBox(height: 10),
            Text("Lokasi: ${data.lokasi}"),
            Text("Harga: Rp ${data.harga}"),
            Text("Rating: ${data.rating} ⭐"),

            SizedBox(height: 20),

            // 🔥 BOOKING
            ElevatedButton(
              onPressed: () {
                Get.snackbar("Booking", "Kos berhasil dibooking");
              },
              child: Text("Booking"),
            ),

            // 💳 PEMBAYARAN
            ElevatedButton(
              onPressed: () {
                Get.snackbar("Pembayaran", "Pembayaran berhasil");
              },
              child: Text("Bayar"),
            ),

            SizedBox(height: 20),

            // ⭐ REVIEW
            Text("Review: ⭐⭐⭐⭐☆"),
          ],
        ),
      ),
    );
  }
}
