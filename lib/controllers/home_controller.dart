import 'package:get/get.dart';
import '../models/kos_model.dart';

class HomeController extends GetxController {
  var kosList = <KosModel>[].obs;
  var search = "".obs;

  @override
  void onInit() {
    super.onInit();
    loadKos();
  }

  void loadKos() {
    kosList.value = [
      KosModel(nama: "Kos Putra A", harga: 500000, lokasi: "Malang"),
      KosModel(nama: "Kos Putri B", harga: 700000, lokasi: "Surabaya"),
      KosModel(nama: "Kos Exclusive", harga: 1000000, lokasi: "Jakarta"),
    ];
  }

  List<KosModel> get filteredKos {
    if (search.value.isEmpty) return kosList;
    return kosList
        .where((e) => e.nama.toLowerCase().contains(search.value.toLowerCase()))
        .toList();
  }
}
