import 'package:flutter/material.dart';
import 'package:uts_pemob_teknik/main.dart';

void main() {
  runApp(ProfileApp());
}

class ProfileApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profile App',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: ProfileScreen(),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profiles'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => (MainApp()),
              ),
            );
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              _buildProfile(
                imageUrl: 'assets/reyza.jpeg',
                name: 'Reyza Reyzanata',
                birthDate: '22 Desember 2003',
                address: 'Surabaya, Jawa Timur',
                phone: '+1234567890',
                email: 'reyzapoteto652@gmail.com',
                githubUrl: 'https://github.com/reyzapoteto',
                education:
                    'SMPN 26 Surabaya\nSMKN 1 Surabaya\nUPN "Veteran" Jawa Timur - Sistem Informasi ',
                awards:
                    '3rd winner UIUX Competition\n1st Winner of Web VCP Competition\n2nd Winner of Web Design Competition',
              ),
              SizedBox(height: 20),
              _buildProfile(
                imageUrl: 'assets/pita.jpg',
                name: 'Diah Pitaloka Rachmawati',
                birthDate: '02 Oktober 2003',
                address: 'Gresik, Jawa Timur',
                phone: '082246698449',
                email: 'diahpitaaa@gmail.com',
                githubUrl: 'https://github.com/diahpitaa',
                education:
                    'SMPN 3 Gresik\nSMAN 1 Kebomas\nUPN "Veteran" Jawa Timur - Sistem Informasi ',
                awards:
                    'Juara Harapan 1 UI/UX Indoneris 2023 Universitas Amikom Purwokerto ',
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildProfile({
    required String imageUrl,
    required String name,
    required String birthDate,
    required String address,
    required String phone,
    required String email,
    required String githubUrl,
    required String education,
    required String awards,
  }) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: Colors.grey, width: 3),
      ),
      child: Row(
        children: <Widget>[
          Container(
            width: 120,
            height: 120,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              border: Border.all(color: Colors.grey, width: 2),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.network(
                imageUrl,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(width: 20),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  name,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                _buildDetailItem(Icons.cake, 'Tanggal Lahir', birthDate),
                _buildDetailItem(Icons.location_on, 'Alamat', address),
                _buildDetailItem(Icons.phone, 'Nomor Telepon', phone),
                _buildDetailItem(Icons.email, 'Email', email),
                _buildDetailItem(Icons.link, 'GitHub', githubUrl),
                _buildDetailItem(Icons.school, 'Pendidikan', education),
                _buildDetailItem(Icons.star, 'Penghargaan', awards),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDetailItem(IconData icon, String title, String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        children: <Widget>[
          Icon(icon, color: Colors.grey),
          SizedBox(width: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 2),
              Text(
                text,
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
