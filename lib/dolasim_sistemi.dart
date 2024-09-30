import 'package:flutter/material.dart';

class DolasimSistemi extends StatelessWidget {
  const DolasimSistemi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Ekran genişliği ve yüksekliği değerlerini almak için MediaQuery kullanıyoruz.
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Dolaşım Sistemi',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.red,
      ),
      body: Container(
        color: Colors.pink[100], // Arka plan rengi
        padding: EdgeInsets.all(
            screenWidth * 0.04), // Padding'i dinamik hale getiriyoruz
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Dolaşım Sistemi',
                style: TextStyle(
                  fontSize: screenWidth * 0.08, // Dinamik font büyüklüğü
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: screenHeight * 0.03), // Dinamik boşluk
              Image.asset(
                'assets/images/dolasim_sistemi.jpg',
                fit: BoxFit.cover,
                width: screenWidth * 0.8, // Resmi ekran genişliğine göre ayarla
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
                        'Kalp, Damarlar ve Kan',
                        style: TextStyle(
                          fontSize:
                              screenWidth * 0.06, // Dinamik font büyüklüğü
                          color: Colors.red,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic,
                          decoration: TextDecoration.underline,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: screenHeight * 0.02), // Dinamik boşluk
                      Text(
                        'Kalp, kanı pompalar',
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
                        'Kalpte 4 odacık var, 2 üstte, 2 altta',
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
                        '3 damar var; atar damar, toplar damar, kılcal damar',
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
                        'Toplar damar, kalbe kirli kan getirir\n'
                        'Atardamar kalpten temiz kanı götürür.\n'
                        'Kılcal damar doku ve kan damarı arasında madde alışverişi yapar',
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
                        'Alyuvar oksijen taşır, kırmızı renklidir\n'
                        'Akyuvar vücudu mikroplara karşı korur\n'
                        'Kan pulcukları kanı pıhtılaştırır.',
                        style: TextStyle(
                          fontSize:
                              screenWidth * 0.04, // Dinamik font büyüklüğü
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: screenHeight * 0.03), // Dinamik boşluk
                      Text(
                        'Büyük Kan Dolaşımı',
                        style: TextStyle(
                          fontSize:
                              screenWidth * 0.06, // Dinamik font büyüklüğü
                          color: Colors.red,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic,
                          decoration: TextDecoration.underline,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: screenHeight * 0.02), // Dinamik boşluk
                      Text(
                        'Kalp ile tüm vücut arasında olur, amaç dokulara besin ve oksijen götürmek',
                        style: TextStyle(
                          fontSize:
                              screenWidth * 0.04, // Dinamik font büyüklüğü
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: screenHeight * 0.03), // Dinamik boşluk
                      Text(
                        'Küçük Kan Dolaşımı',
                        style: TextStyle(
                          fontSize:
                              screenWidth * 0.06, // Dinamik font büyüklüğü
                          color: Colors.red,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic,
                          decoration: TextDecoration.underline,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: screenHeight * 0.02), // Dinamik boşluk
                      Text(
                        'Kalp ile akciğer arasında olur, amaç kanın temizlenmesi',
                        style: TextStyle(
                          fontSize:
                              screenWidth * 0.04, // Dinamik font büyüklüğü
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: screenHeight * 0.03), // Dinamik boşluk
                      Text(
                        'A, B, AB, 0 kan grupları vardır, herkes kendi grubuna kan verir',
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
                        'Kan bağışı yapabilmek için 18-65 yaş aralığında ve 50 kg üstü olmak gerekir.',
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
