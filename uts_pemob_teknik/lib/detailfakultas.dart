import 'package:flutter/material.dart';
import 'datamodel.dart';

class DetailFakultas extends StatelessWidget {
  final KeteranganProdi datanya;

  const DetailFakultas({Key? key, required this.datanya}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(this.datanya.nama),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(this.datanya.image),
                  fit: BoxFit.fitHeight,
                ),
              ),
            ),
            SizedBox(height: 16.0),
            const Text(
              'Visi',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8.0),
            Text(
              this.datanya.visi,
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 16.0),
            const Text(
              'Misi',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: datanya.misinya
                  .map((misinya) =>
                      Text(misinya.nama, style: TextStyle(fontSize: 16)))
                  .toList(),
            ),
            const SizedBox(height: 16.0),
            const Text(
              'Ketua Program Studi',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8.0),
            Text(
              this.datanya.ketua,
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 16.0),
            Text(
              'Dosen',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: this
                  .datanya
                  .dosenya
                  .map((dosenya) =>
                      Text(dosenya.nama, style: TextStyle(fontSize: 16)))
                  .toList(),
            ),
            SizedBox(height: 16.0),
            Text(
              'Website',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8.0),
            GestureDetector(
              onTap: () {
                // Add navigation to the website here
              },
              child: Text(
                this.datanya.website,
                style: TextStyle(fontSize: 18, color: Colors.blue),
              ),
            ),
            SizedBox(height: 16.0),
            Text(
              'Siswa Berprestasi',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: this
                  .datanya
                  .prestasinya
                  .map((prestasi) => Text(prestasi.prestasinya,
                      style: TextStyle(fontSize: 16)))
                  .toList(),
            ),
          ],
        ),
      ),
    );
  }
}
