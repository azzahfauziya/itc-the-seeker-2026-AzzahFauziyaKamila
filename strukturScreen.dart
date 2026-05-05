import 'package:flutter/material.dart';
import 'package:flutter_application_1/pengurus.dart';
import 'detailScreen.dart';

class StrukturScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Struktur ITC 2026")),
      body: ListView.builder(
        itemCount: dataPengurus.length,
        itemBuilder: (context, index) {
          final p = dataPengurus[index];

          return ListTile(
            leading: CircleAvatar(backgroundImage: AssetImage(p.foto)),
            title: Text(
              p.nama,
              style: TextStyle(
                fontWeight: p.jabatan == "Ketua"
                    ? FontWeight.bold
                    : FontWeight.normal,
              ),
            ),
            subtitle: Text("${p.jabatan} - ${p.divisi}"),
            trailing: Icon(Icons.arrow_forward),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => DetailScreen(pengurus: p)),
              );
            },
          );
        },
      ),
    );
  }
}
