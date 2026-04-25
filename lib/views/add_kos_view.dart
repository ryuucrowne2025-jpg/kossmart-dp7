import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/home_controller.dart';
import '../models/kos_model.dart';

class AddKosView extends StatelessWidget {
  final nama = TextEditingController();
  final harga = TextEditingController();
  final lokasi = TextEditingController();

  final controller = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Tambah Kos")),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              controller: nama,
              decoration: InputDecoration(labelText: "Nama Kos"),
            ),
            TextField(
              controller: harga,
              decoration: InputDecoration(labelText: "Harga"),
            ),
            TextField(
              controller: lokasi,
              decoration: InputDecoration(labelText: "Lokasi"),
            ),

            SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {
                controller.addKos(
                  KosModel(
                    nama: nama.text,
                    harga: int.parse(harga.text),
                    lokasi: lokasi.text,
                  ),
                );
                Get.back();
              },
              child: Text("Simpan"),
            ),
          ],
        ),
      ),
    );
  }
}
