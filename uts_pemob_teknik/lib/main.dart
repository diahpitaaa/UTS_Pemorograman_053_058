import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:uts_pemob_teknik/detailfakultas.dart';
import 'package:uts_pemob_teknik/profile.dart';

import 'package:uts_pemob_teknik/datadiri.dart';
import 'datamodel.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Prodi Fakultas Teknik',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Fakultas Teknik'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;

  const MyHomePage({Key? key, required this.title}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  static List<Widget> _widgetOptions = <Widget>[
    MyHomePageContent(),
    ProfilePage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding:
                    EdgeInsets.all(8.0), // Adjust the padding value as needed
                child: CircleAvatar(
                  backgroundImage: AssetImage('logoupn.png'),
                  radius:
                      20.0, // Adjust the radius of the CircleAvatar if needed
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                        vertical:
                            4.0), // Adjust the vertical padding value as needed
                    child: Text(
                      widget.title,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18.0,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        vertical:
                            2.0), // Adjust the vertical padding value as needed
                    child: Text(
                      'UPN Veteran Jawa Timur',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 12.0,
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: [
          MyHomePageCard(),
          Expanded(
            child: _widgetOptions.elementAt(_selectedIndex),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        onTap: _onItemTapped,
      ),
    );
  }
}

class MyHomePageContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView.builder(
        itemCount: datamodel.prodinya.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return DetailFakultas(datanya: datamodel.prodinya[index]);
                  },
                ),
              );
            },
            child: buildProdiCard(datamodel.prodinya[index]),
          );
        },
      ),
    );
  }
}

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView.builder(
        itemCount: dataDiri.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 10),
                CircleAvatar(
                  backgroundImage: AssetImage(dataDiri[index]['image']),
                ),
                SizedBox(height: 10),
                Text(dataDiri[index]['name']),
                SizedBox(height: 10),
                Text(dataDiri[index]['npm']),
                SizedBox(height: 10),
                Text(
                  dataDiri[index]['description'],
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => (ProfileApp()),
                      ),
                    );
                  },
                  child: Text(dataDiri[index]['buttonText']),
                ),
                SizedBox(height: 20),
              ],
            ),
          );
        },
      ),
    );
  }
}

_launchURL(String url) async {
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url ';
  }
}

Widget buildProdiCard(KeteranganProdi prodi) {
  return Card(
    elevation: 2.0,
    color: Colors.white,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10.0),
    ),
    child: Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 100.0,
            height: 50.0,
            // Adjust the radius of the CircleAvatar if needed
            child: CircleAvatar(
              backgroundImage: AssetImage(prodi.image),
              radius: 20.0,
            ),
          ),
          const SizedBox(width: 12.0),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  prodi.nama,
                  style: const TextStyle(
                    fontSize: 12.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8.0),
                Text(
                  'Akreditas:' + prodi.akreditas,
                  style: const TextStyle(fontSize: 12.0),
                ),
                Text(
                  'ketua:' + prodi.ketua,
                  style: const TextStyle(fontSize: 12.0),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}

class MyHomePageCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Row(
        children: [
          Expanded(
            child: Card(
              elevation: 2.0,
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: const Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image(
                      image: AssetImage('ft.png'),
                      fit: BoxFit.fill,
                    ),
                    Text(
                      'Fakultas Teknik',
                      style: TextStyle(
                        fontSize: 10.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 6.0),
                    Text(
                      'Fakultas Teknik Di UPN “Veteran” Jawa Timur Merupakan Satu-Satunya Fakultas Di UPN “Veteran” Jawa Timur Yang Menawarkan Menawarkan Berbagai Program Studi Di Bidang Teknik Yang Bertujuan Untuk Menghasilkan Lulusan Yang Kompeten Dan Siap Untuk Berkontribusi Dalam Industri Dan Masyarakat',
                      style: TextStyle(
                        fontSize: 8.0,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
