class Divisi {
  final String nama;
  final String deskripsi;

  Divisi({
    required this.nama, 
    required this.deskripsi
  });
}

final List<Divisi> dataDivisi = [
  Divisi(
    nama: "Pemrograman Mobile",
    deskripsi: "Divisi yang mengajari pemrograman mobile"
  ),
  Divisi(
    nama: "Pemrograman Web",
    deskripsi: "Divisi yang mengajari pemrograman web"
  ),
  Divisi(
    nama: "Project Manager",
    deskripsi: "Divisi yang mengajari cara menjadi project manager"
  ),
];