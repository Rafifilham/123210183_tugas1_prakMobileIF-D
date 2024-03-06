import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Praktikum IF-D'),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment
                .start, // Atur menjadi start untuk layout vertikal
            children: [
              // Text Section
              Column(
                children: [
                  Text('Nama: Rafif Ilham Yafi'),
                  Text('NIM: 123210183'),
                  SizedBox(height: 20),
                  TextField(
                    decoration:
                        InputDecoration(labelText: 'Masukkan teks di sini'),
                  ),
                ],
              ),

              // Button Section
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      // Logika untuk tombol pertama
                    },
                    child: Text('Button 1'),
                  ),
                  SizedBox(width: 20),
                  ElevatedButton(
                    onPressed: () {
                      // Logika untuk tombol kedua
                    },
                    child: Text('Button 2'),
                  ),
                ],
              ),

              // Image List Section
              Container(
                height: 1000, // Sesuaikan tinggi container sesuai kebutuhan
                child: ListView(
                  scrollDirection: Axis.vertical, // Ubah menjadi vertikal
                  children: [
                    Image.asset(
                        'images/gambar_1.jpg'), // Ganti dengan nama file gambar yang sesuai
                    Image.asset('images/gambar_2.jpg'),
                    Image.asset('images/gambar_3.jpg'),
                    Image.asset('images/gambar_4.jpg'),
                    Image.asset('images/gambar_5.jpg'),
                    // Tambahkan Image.asset sesuai dengan jumlah gambar yang Anda miliki
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
