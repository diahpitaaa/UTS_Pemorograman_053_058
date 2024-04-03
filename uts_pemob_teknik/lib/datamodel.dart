class datamodel {
  List<dosen> dosenya = const [];
  List<prestasi> prestasinya = const [];

  static List<KeteranganProdi> prodinya = [
    KeteranganProdi(
        'Tkimia.jpeg',
        "Prodi Teknik Kimia",
        'Menjadi Program Studi yang unggul dalam IPTEK di bidang Teknik Kimia yang berkarakter bela negara.',
        [
          misi(
              '1. Menyelenggarakan pendidikan dan pembelajaran berkualitas di bidang Teknologiberkarakter bela negara'),
          misi(
              '2. Mengembangkan sumberdaya manusia yang berkualitas dalam bidang pendidikan,pengajaran, dan penelitian.'),
          misi(
              '3. Meningkatkan kualitas dan system pengolahan dan pengadaan sarana dan prasarana laboratorium'),
          misi(
              '4. Menyelenggarakan kegiatan penelitian untuk pengembangan ilmu teknologi pangan melalui rekayasa pangan berbahan baku local'),
          misi(
              '5. Menyelenggarakan tata kelola yang baik, sehat, bersih dan transparan dalam rangka mencapai akuntabilitas pengelolaan program studi'),
          misi(
              '6. Menyelenggarakan kerjasama pendidikan, penelitian dan pengabdian kepada masyarakat dengan mitra baik nasional maupun internasional.')
        ],
        "A",
        "Dr. Ir. Sintha Soraya Santi,MT",
        [
          dosen(1, 'Dr. Ir. Sintha Soraya Santi,MT'),
          dosen(2, ' Lilik Suprianti, ST, M.Sc'),
          dosen(3, ' Ir. Retno Dewati, MT')
        ],
        "https://tekkimia.upnjatim.ac.id/",
        [
          prestasi("1", "MBKM pertukaran mahasiswa"),
          prestasi("2", "Kunjungan ke Pt. Pertamina RU IV"),
          prestasi("3", "Perkuatan Praktisi Mengajar Kompetensi Mahasiswa")
        ]),
    KeteranganProdi(
        'Tti.png',
        "Prodi Teknik Industri",
        'Menjadi program studi unggul dalam pengembangan keilmuan teknik industri dalam meningkatkan produktifitas dan kualitas sistem yang berkarakter Bela Negara',
        [misi(''), misi('')],
        "A",
        "Nama Ketua",
        [
          dosen(1, 'Dr. Farida Pulansari, ST., MT., CSCM.,IPM'),
          dosen(2, 'Dr. Ir. Minto Waluyo, MM'),
          dosen(3, 'Dr. Dira Ernawati, ST., MT.')
        ],
        "https://tekindustri.upnjatim.ac.id/",
        [prestasi("-", "-")]),
    KeteranganProdi(
        'Tling.jpg',
        "Prodi Teknik Lingkungan",
        '“Menjadi Program Studi Teknik Lingkungan yang unggul, menghasilkan lulusan yang berdaya saing di bidang rekayasa dan manajemen lingkungan, dengan karakter bela negara',
        [
          misi(
              '1. Menyelenggarakan pendidikan dan pembelajaran berkualitas di bidang Teknologiberkarakter bela negara.'),
          misi(
              '2. Mengembangkan sumberdaya manusia yang berkualitas dalam bidang pendidikan,pengajaran, dan penelitian pada bidangnya'),
          misi(
              '3. Meningkatkan kualitas dan system pengolahan dan pengadaan sarana dan prasarana laboratorium'),
          misi(
              '4. Menyelenggarakan kegiatan penelitian untuk pengembangan ilmu teknologi pangan melalui rekayasa pangan berbahan baku local'),
          misi(
              '5. Menyelenggarakan tata kelola yang baik, sehat, bersih dan transparan dalam rangka mencapai akuntabilitas pengelolaan program studi'),
          misi(
              ' 6. Menyelenggarakan kerjasama pendidikan, penelitian dan pengabdian kepada masyarakat dengan mitra baik nasional maupun internasional.')
        ],
        "A",
        "Prof. Dr. Ir. Novirina Hendrasarie, MT.",
        [
          dosen(1, 'Firra Rosariawari, S.T., M.T.'),
          dosen(2, 'Prof. Dr. Ir. Novirina Hendrasarie, MT.'),
          dosen(3, 'Prof. Euis Nurul Hidayah, MT., PhD.')
        ],
        "https://teklingk.upnjatim.ac.id/",
        [
          prestasi("1", "Program Teknlik Lingkungan Mengabdi"),
          prestasi(
              "1", "Mahasiswa Teknik Lingkungan Mengembangkan Alat ECOZIM"),
          prestasi("1", "Dosen Teknik Lingkungan Tentant Circular Econommy")
        ]),
    KeteranganProdi(
        'Tsipil.jpg',
        "Prodi Teknik Sipil",
        'Visi Program Studi Teknik Sipil adalah menjadi program studi yang unggul dalam pengembangan dan penerapan ilmu pengetahuan, teknologi (IPTEK) serta sumber daya manusia guna menumbuhkembangkan potensi daerah yang mampu bersaing dalam pasar bebas dan berkarakter bela negara',
        [
          misi(
              '1.Menyelenggarakan dan mengembangkan pendidikan di bidang teknik sipil berkarakter bela negara'),
          misi(
              '2. Meningkatkan budaya riset dalam pengembangan bidang ilmu pengetahuan, dan teknologi (IPTEK) yang berdaya guna untuk kesejahteraan masyarakat.'),
          misi(
              '3. Menyelenggarakan pengabdian kepada masyarakat berbasis riset dan kearifan lokal'),
          misi(
              '4. Menyelenggarakan tata kelola yang baik dan bersih dalam rangka mencapai akuntabilitas pengelolaan anggaran.'),
          misi(
              '5. Mengembangkan kualitas sumber daya manusia unggul dalam sikap dan tata nilai, unjuk kerja, penguasaan pengetahuan dan manajerial'),
          misi('6. Meningkatkan sistem pengelolaan sarana dan prasarana'),
          misi(
              '7. Meningkatkan kerjasama institusional dengan stakeholder baik dalam dan luar negeri'),
        ],
        "A",
        "Ir.Wahyu Kartini,M.T",
        [
          dosen(1, 'Ir.Wahyu Kartini,M.T'),
          dosen(2, 'Cintantya Budi Casita S.T,M.T'),
          dosen(3, 'Sumaidi S.T,M.T')
        ],
        "https://teksipil.upnjatim.ac.id/",
        [
          prestasi("1", "Serunya kegiatan"),
          prestasi("2", "UPN Vetran Jatim Edu Expo"),
          prestasi("3", "Program prestasi Jurnal")
        ]),
    KeteranganProdi(
        'Tmesin.jpg',
        "Prodi Teknik Mesin",
        'Menjadi Program Studi Teknik Mesin Berkarakter Bela Negara',
        [
          misi(
              '1.Menyelenggarakan dan mengembangkan pendidikan berkarakter bela negara untuk menghasilkan lulusan yang mampu mengaplikasikan keahlian dengan memanfaatkan IPTEK di bidang Teknik Mesin serta menumbuhkan inovasi untuk menunjang proses industrialisasi, teknologi Biomedik, serta siap menghadapi tantangan era revolusi industri 4.0.'),
          misi(
              '2. Meningkatkan budaya riset dalam pengembangan IPTEK bidang Teknik Mesin yang berdaya guna untuk kesejahteraan masyarakat.'),
          misi(
              '3. Menyelenggarakan pengabdian kepada masyarakat berbasis riset dan kearifan lokal di bidang Teknik Mesin'),
          misi(
              '4. Meningkatkan manajemen program studi dan pengelolaan sarana prasarana terpadu, guna bisa menjalin kerjasama dengan masyarakat, institusi, dan lembaga pemerintahan dan swasta.')
        ],
        "A",
        "Dr.T.Ir. Luluk Edahwati, MT",
        [
          dosen(1, 'Dr.T.Ir. Luluk Edahwati, MT.'),
          dosen(2, 'Dr. Wahyu Dwi Lestari, S.Pd.,MT'),
          dosen(3, 'Tria Puspa Sari, S.T., M.S')
        ],
        "https://tekmesin.upnjatim.ac.id/",
        [
          prestasi("1", "Pembukaan Mahasiswa baru Program Teknik Mesin"),
          prestasi("1", "Resmikan gedung 19.000 Mahasiswa MKU")
        ])
  ];
}

class datadiri {
  int nomor;
  String image;
  String nama;
  datadiri(this.nomor, this.image, this.nama);
}

class dosen {
  int nomor;
  String nama;
  dosen(this.nomor, this.nama);
}

class prestasi {
  String nama;
  String prestasinya;
  prestasi(this.nama, this.prestasinya);
}

class Prodi {
  double quantity;
  String measure;
  String name;

  Prodi(this.quantity, this.measure, this.name);
}

class misi {
  String nama;

  misi(this.nama);
}

class KeteranganProdi {
  String image;
  String nama;
  String visi;
  List<misi> misinya = const [];
  String akreditas;
  String ketua;
  List<dosen> dosenya = const [];
  String website;
  List<prestasi> prestasinya = const [];

  KeteranganProdi(this.image, this.nama, this.visi, this.misinya,
      this.akreditas, this.ketua, this.dosenya, this.website, this.prestasinya);
}
