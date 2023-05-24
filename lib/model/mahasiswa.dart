class Mahasiswa {
  String name;
  String jurusan;
  String semester;
  List<String> matakuliah;

  Mahasiswa(
      {required this.name,
      required this.jurusan,
      required this.semester,
      required this.matakuliah});
}

var mahasiswa = [
  Mahasiswa(name: 'Dofir Fauzi', jurusan: 'MBS', semester: 'IV', matakuliah: [
    'Bisnis',
    'Ekonomi',
    'Akuntansi',
    'Ekonomi makro',
    'dirosah islamiyah'
  ]),
  Mahasiswa(
      name: 'Sujiwo Tejo',
      jurusan: 'AS',
      semester: 'IV',
      matakuliah: ['Bisnis', 'Ekonomi', 'Akuntansi']),
  Mahasiswa(
      name: 'Atang Sumantri',
      jurusan: 'ES',
      semester: 'IV',
      matakuliah: ['Bisnis', 'Ekonomi', 'Pengantar Akuntansi']),
  Mahasiswa(
      name: 'Ajat Sudrajat',
      jurusan: 'ES',
      semester: 'IV',
      matakuliah: ['Bisnis', 'Ekonomi', 'Pengantar Akuntansi']),
  Mahasiswa(
      name: 'Novel Baswedaan',
      jurusan: 'ES',
      semester: 'IV',
      matakuliah: ['Bisnis', 'Ekonomi', 'Pengantar Akuntansi']),
  Mahasiswa(
      name: 'Ayu Ningsih',
      jurusan: 'ES',
      semester: 'IV',
      matakuliah: ['Bisnis', 'Ekonomi', 'Pengantar Akuntansi']),
  Mahasiswa(
      name: 'Neneng Kuriasih',
      jurusan: 'ES',
      semester: 'IV',
      matakuliah: ['Bisnis', 'Ekonomi', 'Pengantar Akuntansi']),
];
