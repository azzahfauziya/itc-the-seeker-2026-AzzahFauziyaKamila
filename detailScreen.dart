import 'package:flutter/material.dart';
import 'pengurus.dart';

class DetailScreen extends StatefulWidget {
  final Pengurus pengurus;

  DetailScreen({required this.pengurus});

  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  bool isFav = false;

  @override
  Widget build(BuildContext context) {
    final p = widget.pengurus;

    return Scaffold(
      appBar: AppBar(title: Text("Detail pengurus")),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            CircleAvatar(radius: 50, backgroundImage: AssetImage(p.foto)),
            SizedBox(height: 10),
            Text(
              p.nama,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(p.jabatan),
            Text(p.divisi),
            SizedBox(height: 10),
            Text(p.deskripsi),
            SizedBox(height: 20),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(icon: Icon(Icons.chat), onPressed: () {}),
                IconButton(icon: Icon(Icons.email), onPressed: () {}),
                IconButton(
                  icon: Icon(
                    isFav ? Icons.star : Icons.star_border,
                    color: const Color.fromARGB(255, 255, 7, 7),
                  ),
                  onPressed: () {
                    setState(() {
                      isFav = !isFav;
                    });
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
