import 'package:flutter/material.dart';

class SolunumSistemi extends StatelessWidget {
  const SolunumSistemi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Ekran genişliği ve yüksekliği için MediaQuery kullanıyoruz
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Solunum Sistemi',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        color: Colors.lightBlue[100], // Arka plan rengi
        padding: EdgeInsets.all(screenWidth * 0.04), // Dinamik padding
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Solunum Sistemi',
                style: TextStyle(
                  fontSize: screenWidth * 0.08, // Dinamik font büyüklüğü
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: screenHeight * 0.03), // Dinamik boşluk
              Image.asset(
                'assets/images/solunum_sistemi.jpg',
                fit: BoxFit.cover,
                width: screenWidth * 0.8, // Görseli dinamik boyutlandır
              ),
              SizedBox(height: screenHeight * 0.03), // Dinamik boşluk
              Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Padding(
                  padding:
                      EdgeInsets.all(screenWidth * 0.05), // Dinamik padding
                  child: Column(
                    children: [
                      Text(
                        'Oksijenin İzlediği Yol',
                        style: TextStyle(
                          fontSize:
                              screenWidth * 0.06, // Dinamik font büyüklüğü
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic,
                          decoration: TextDecoration.underline,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: screenHeight * 0.02), // Dinamik boşluk
                      Text(
                        '👃 Burun → Yutak → Soluk Borusu → Bronş → Bronşçuk → Alveol 👃',
                        style: TextStyle(
                          fontSize:
                              screenWidth * 0.045, // Dinamik font büyüklüğü
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: screenHeight * 0.02), // Dinamik boşluk
                      Text(
                        'Soluk Almada',
                        style: TextStyle(
                          fontSize:
                              screenWidth * 0.06, // Dinamik font büyüklüğü
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic,
                          decoration: TextDecoration.underline,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: screenHeight * 0.02), // Dinamik boşluk
                      Text(
                        'Diyafram kası kasılarak düzleşir.\n'
                        'Kaburgalar arası kaslar kasılır.\n'
                        'Göğüs boşluğu genişler.\n'
                        'Akciğerin hacmi artar.\n'
                        'Karın boşluğu daralır.\n'
                        'Dışarıdaki hava akciğere dolar.',
                        style: TextStyle(
                          fontSize:
                              screenWidth * 0.04, // Dinamik font büyüklüğü
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: screenHeight * 0.02), // Dinamik boşluk
                      Text(
                        'Soluk Vermekte',
                        style: TextStyle(
                          fontSize:
                              screenWidth * 0.06, // Dinamik font büyüklüğü
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic,
                          decoration: TextDecoration.underline,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: screenHeight * 0.02), // Dinamik boşluk
                      Text(
                        'Diyafram kası gevşeyerek kubbeleşir.\n'
                        'Kaburgalar arası kaslar gevşer.\n'
                        'Göğüs boşluğu daralır.\n'
                        'Akciğerin hacmi azalır.\n'
                        'Karın boşluğu genişler.\n'
                        'Akciğerdeki hava dışarı atılır.',
                        style: TextStyle(
                          fontSize:
                              screenWidth * 0.04, // Dinamik font büyüklüğü
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
