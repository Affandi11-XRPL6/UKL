import 'package:flutter/material.dart';
import 'package:movi_id/Widget/But.dart';
import 'package:movi_id/Widget/Spotlight.dart';
import 'package:movi_id/Widget/botnavbar.dart';
import 'package:movi_id/Widget/buildMovieItem.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  final List<String> _locations = ["Jakarta", "Badung", "Depok", "Tangerang", "Surabaya"];
  String _selectedLocation = "Jakarta";

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
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: MediaQuery.of(context).size.width * 1,
              width: MediaQuery.of(context).size.width * 1,
              color: Colors.grey[300],
              child: PageView(
                children: [
                  Image.asset('assets/seka.jpg', fit: BoxFit.cover),
                  Image.asset('assets/bila.jpg', fit: BoxFit.cover),
                  Image.asset('assets/azza.jpg', fit: BoxFit.cover),
                ],
              ),
            ),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "SEDANG TAYANG",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  ButtonPendukung(),
                  SizedBox(
                    height: 200,
                    width: 370,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        MovieItem(imagePath: 'assets/avenger.jpg', movie: ''),
                        MovieItem(imagePath: 'assets/diambang.jpg', movie: ''),
                        MovieItem(imagePath: 'assets/hija.jpg', movie: ''),
                        MovieItem(imagePath: 'assets/insiot2.jpg', movie: ''),
                        MovieItem(imagePath: 'assets/seka.jpg', movie: ''),
                      ],
                    ),
                  ),
                  SizedBox(height: 8),
                  const Text(
                    "SpotLight",
                    style: TextStyle(fontSize: 16, color: Color.fromARGB(137, 0, 0, 0),fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 16),
                  SizedBox(height: 8),
                  const Text(
                    "Berita hiburan terhangat untuk anda",
                    style: TextStyle(fontSize: 16, color: Colors.black54,fontWeight: FontWeight.bold),
                  ),
                 Spotlight(),
                  const SizedBox(height: 8),
                  const SizedBox(height: 4),
                  const Text(
                    "5h ago",
                    style: TextStyle(fontSize: 12, color: Colors.black54),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "TIX Now",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text("Semua", style: TextStyle(color: Colors.blue)),
                  ),
                ],
              ),
            ),
            ListView(
              shrinkWrap: true,
              physics: AlwaysScrollableScrollPhysics(),
              children: [
                _buildTixNowItem(
                  imagePath: 'assets/korean.jpg',
                  title: "We Live in Time' Drama Romansa Terbaru",
                  subtitle: "3h ago",
                ),
                _buildTixNowItem(
                  imagePath: 'assets/frozen.jpg',
                  title: "Tuan putri dinginkan Dunia Perfilman",
                  subtitle: "7h ago",
                ),
                _buildTixNowItem(
                  imagePath: 'assets/insiot2.jpg',
                  title: "'Inside Out 2' Penggambaran emosional orang remaja",
                  subtitle: "1w ago",
                ),
                _buildTixNowItem(
                  imagePath: 'assets/thedol.jpg',
                  title: "Sedang Tayang, Boneka pembunuh dingin",
                  subtitle: "2w ago",
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: Botnavbar(0),
    );
  }

  Widget _buildTixNowItem({
    required String imagePath,
    required String title,
    required String subtitle,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.asset(
              imagePath,
              height: 80,
              width: 80,
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
                  style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 4),
                Text(
                  subtitle,
                  style: const TextStyle(fontSize: 12, color: Colors.black54),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
