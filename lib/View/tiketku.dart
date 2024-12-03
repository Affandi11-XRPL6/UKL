import 'package:flutter/material.dart';
import 'package:movi_id/Widget/botnavbar.dart';

class Tiketku extends StatelessWidget {
  const Tiketku({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Container(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(8),
          ),
          child: Row(
            children: [
              const Icon(Icons.search_outlined, color: Colors.black54),
              const SizedBox(width: 8),
              const Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Cari di MOVI_ID",
                    border: InputBorder.none,
                  ),
                  style: TextStyle(fontSize: 16),
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.person_outline),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.notifications_on_outlined),
              ),
            ],
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            color: Colors.grey[200],
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            child: Row(
              children: const [
                Icon(Icons.location_on, color: Colors.black54),
                SizedBox(width: 8),
                Text(
                  "Jakarta",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.all(16),
              children: [
                _buildBioskopCard(
                  imagePath: 'assets/siksakubur.jpg',
                  title: "SIKSA KUBUR",
                  ageRating: "D 17+",
                  genre: "HORROR",
                  rating: "9.6",
                ),
                const SizedBox(height: 16),
                _buildBioskopCard(
                  imagePath: 'assets/diambang.jpg',
                  title: "DI AMBANG KEMATIAN",
                  ageRating: "R 16+",
                  genre: "HORROR",
                  rating: "9.7",
                ),
              ],
            ),
          ),
        ],
      ),
     bottomNavigationBar: Botnavbar(3),
    );
  }

  Widget _buildBioskopCard({
    required String imagePath,
    required String title,
    required String ageRating,
    required String genre,
    required String rating,
  }) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey[300]!),
        borderRadius: BorderRadius.circular(8),
        color: Colors.white,
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.asset(
              imagePath,
              width: 100,
              height: 120,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  ageRating,
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.red[400],
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  genre,
                  style: const TextStyle(
                    fontSize: 12,
                    color: Colors.black54,
                  ),
                ),
                const SizedBox(height: 8),
                Row(
                  children: [
                    const Icon(Icons.star, color: Colors.amber, size: 16),
                    const SizedBox(width: 4),
                    Text(
                      rating,
                      style: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
