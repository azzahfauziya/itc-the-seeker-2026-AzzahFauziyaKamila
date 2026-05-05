class Pengurus {
  final String nama;
  final String jabatan;
  final String divisi;
  final String foto;
  final String deskripsi;

  Pengurus({
    required this.nama,
    required this.jabatan,
    required this.divisi,
    required this.foto,
    required this.deskripsi,
  });
}

List<Pengurus> dataPengurus = [
  Pengurus(
    nama: 'Grace',
    jabatan: 'Ketua',
    divisi: 'ITC',
    foto: 'gambar/ketua.png',
    deskripsi: 'ketua ITC 2026',
  ),
  Pengurus(
    nama: 'Zaki',
    jabatan: 'Wakil Ketua',
    divisi: 'ITC',
    foto: 'gambar/wakilKetua.png',
    deskripsi: 'wakil ketua ITC 2026',
  ),
  Pengurus(
    nama: 'bintoro',
    jabatan: 'ketua',
    divisi: 'Mobile',
    foto: 'gambar/kadivMobile.png',
    deskripsi: 'ketua divisi pemrograman mobile ITC 2026',
  ),
  Pengurus(
    nama: 'ikhsan',
    jabatan: 'wakil ketua',
    divisi: 'Mobile',
    foto: 'gambar/wakadivMobile.png',
    deskripsi: 'wakil ketua divisi pemrograman mobile ITC 2026',
  ),
];
