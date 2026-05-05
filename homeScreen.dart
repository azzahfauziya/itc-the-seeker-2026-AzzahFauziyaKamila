import 'package:flutter/material.dart';
import 'package:flutter_application_1/pengurus.dart';
import 'strukturScreen.dart';
import 'divisi.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ketua = dataPengurus.first;

    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SingleChildScrollView(
        child: Column(
          children: [
            // header
            Container(
              width: double.infinity,
              padding: EdgeInsets.fromLTRB(20, 60, 20, 30),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color(0xFF032900), Color(0xFF0F5D0F)],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "ITC Directory",
                    style: TextStyle(color: Colors.white70, fontSize: 14),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Information Technology Club",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 20),

            // highlight ketua sama jumlah pengurus
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  Expanded(
                    child: _infoCard(
                      title: "Ketua",
                      value: ketua.nama,
                      icon: Icons.person,
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: _infoCard(
                      title: "Jumlah Divisi",
                      value: "${dataDivisi.length}",
                      icon: Icons.group,
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 20),

            // deskripsi singkat ITC
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                elevation: 3,
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Tentang ITC",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "ITC merupakan organisasi yang berfokus pada pengembangan "
                        "teknologi, khususnya di bidang pemrograman, desain, dan inovasi digital. "
                        "Anggota ITC aktif dalam berbagai proyek dan kegiatan teknologi.",
                        style: TextStyle(color: Colors.grey[700]),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            SizedBox(height: 30),

            ...dataDivisi.map((divisi) {
              return Card(
                margin: EdgeInsets.only(bottom: 10),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: ExpansionTile(
                  leading: Icon(Icons.groups, color: Color(0xFF0F5D0F)),
                  title: Text(
                    divisi.nama,
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(12),
                      child: Text(
                        divisi.deskripsi,
                        style: TextStyle(color: Colors.grey[700]),
                      ),
                    ),
                  ],
                ),
              );
            }).toList(),

            // button lihat struktur organisasi
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(vertical: 14),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    backgroundColor: Color.fromARGB(255, 204, 247, 204),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => StrukturScreen()),
                    );
                  },
                  child: Text(
                    "Lihat Struktur Organisasi",
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ),
            ),

            SizedBox(height: 30),
          ],
        ),
      ),
    );
  }

  Widget _infoCard({
    required String title,
    required String value,
    required IconData icon,
  }) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      elevation: 3,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: Column(
          children: [
            Icon(icon, size: 30, color: Color(0xFF0F5D0F)),
            SizedBox(height: 10),
            Text(
              value,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(title, style: TextStyle(color: Colors.grey)),
          ],
        ),
      ),
    );
  }
}
