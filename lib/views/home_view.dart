import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/home_controller.dart';
import '../widgets/kos_card.dart';

class HomeView extends StatelessWidget {
  final controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("KosSmart")),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(10),
            child: TextField(
              onChanged: (val) => controller.search.value = val,
              decoration: InputDecoration(
                hintText: "Cari kos...",
                prefixIcon: Icon(Icons.search),
              ),
            ),
          ),

          Expanded(
            child: Obx(
              () => ListView.builder(
                itemCount: controller.filteredKos.length,
                itemBuilder: (context, index) {
                  return KosCard(data: controller.filteredKos[index]);
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
