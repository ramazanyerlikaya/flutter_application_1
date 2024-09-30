import 'package:flutter/material.dart';

class SindirimSistemi extends StatelessWidget {
  const SindirimSistemi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Ekran genişliği ve yüksekliği değerlerini almak için MediaQuery kullanıyoruz.
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Sindirim Sistemi',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.orange,
      ),
      body: Container(
        color: Colors.yellow[100], // Arka plan rengi
        padding: EdgeInsets.all(screenWidth * 0.04), // Dinamik padding
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Sindirim Sistemi',
                style: TextStyle(
                  fontSize: screenWidth * 0.08, // Dinamik font büyüklüğü
                  color: Colors.deepOrange,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: screenHeight * 0.03), // Dinamik boşluk
              Image.asset(
                'assets/images/sindirim_sistemi.jpg',
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
                        'Besinlerin Sindirim Serüveni',
                        style: TextStyle(
                          fontSize:
                              screenWidth * 0.06, // Dinamik font büyüklüğü
                          color: Colors.deepOrange,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic,
                          decoration: TextDecoration.underline,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: screenHeight * 0.02), // Dinamik boşluk
                      Text(
                        '🚀 Yemek Yolu: Ağız → Gırtlak → Yutak → Yemek Borusu → Mide → İnce Bağırsak → Kalın Bağırsak 🚀',
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
                        'Fiziksel Sindirim 🌪️: Ağızda parçalama, diş ve dil ile ezme, mide ve bağırsağın hareketi ile olur.',
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
                        'Kimyasal Sindirim 🔬: Besinler enzimler ile yapı taşlarına kadar parçalanır.',
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
                        'Yutakta Sindirim Olmaz 🚫',
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
                        'Karaciğer ve Pankreas 🌟: Yağların fiziksel sindirimi için safra sıvısı, sindirim enzimleri üretir.',
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
                        'Besinlerin Final Sahnesi 🎉: İnce bağırsakta emilir, vücuda enerji verir.',
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
                        'Kalın Bağırsak: 💧 Su ve tuz emilir, sindirim olmaz, emilim olur.',
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
