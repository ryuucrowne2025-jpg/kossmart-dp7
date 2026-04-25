import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../models/kos_model.dart';
import '../views/detail_view.dart';

class KosCard extends StatelessWidget {
  final KosModel data;

  const KosCard({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.to(() => DetailView(data: data)),
      child: Container(
        margin: const EdgeInsets.only(bottom: 12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.white,
          boxShadow: const [BoxShadow(color: Colors.black12, blurRadius: 6)],
        ),
        child: Row(
          children: [
            // IMAGE
            ClipRRect(
              borderRadius: const BorderRadius.horizontal(
                left: Radius.circular(16),
              ),
              child: Image.network(
                "https://picsum.photos/200",
                width: 110,
                height: 110,
                fit: BoxFit.cover,
              ),
            ),

            // CONTENT
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      data.nama,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    const SizedBox(height: 5),

                    Text(
                      "Rp ${data.harga}",
                      style: const TextStyle(
                        color: Colors.green,
                        fontWeight: FontWeight.w600,
                      ),
                    ),

                    Text(data.lokasi),

                    const SizedBox(height: 5),

                    Row(
                      children: [
                        const Icon(Icons.star, color: Colors.orange, size: 16),
                        Text("${data.rating}"),
                        const SizedBox(width: 8),
                        if (data.verified)
                          const Text(
                            "Verified",
                            style: TextStyle(color: Colors.blue),
                          ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
