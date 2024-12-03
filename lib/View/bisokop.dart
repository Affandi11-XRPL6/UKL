import 'package:flutter/material.dart';
import 'package:movi_id/Widget/botnavbar.dart';

class BioskopList extends StatelessWidget {
  const BioskopList({super.key});

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
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.yellow[100],
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                children: [
                  const Icon(Icons.star, color: Color.fromARGB(255, 245, 245, 4)),
                  const SizedBox(width: 12),
                  const Expanded(
                    child: Text(
                      "Tandai bioskop favoritmu!\nBioskop favoritmu akan berada paling atas pada daftar ini dan pada jadwal film.",
                      style: TextStyle(fontSize: 14),
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text("Mengerti"),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                _buildBioskopTile("AEON MALL JGC CGV"),
                _buildBioskopTile("AEON MALL TANJUNG BARAT XXI"),
                _buildBioskopTile("AGORA MALL IMAX"),
                _buildBioskopTile("AGORA MALL PREMIERE"),
                _buildBioskopTile("AGORA MALL XXI"),
                _buildBioskopTile("ARION XXI"),
                _buildBioskopTile("ARTHA GADING XXI"),
                _buildBioskopTile("BASSURA XXI"),
                _buildBioskopTile("PONDOK INDAH XXI"),
                _buildBioskopTile("MALL JAKARTA XXI"),
                _buildBioskopTile("CINEPOLIS JAKARTA XXI")
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: Botnavbar(1),
    );
  }

  Widget _buildBioskopTile(String title) {
    return ListTile(
      leading: const Icon(Icons.star, color: Color.fromARGB(255, 146, 146, 146)),
      title: Text(title),
      trailing: IconButton(
        onPressed: () {}, 
        icon: const Icon(Icons.arrow_forward_ios_rounded),
      ),
    );
  }
}
