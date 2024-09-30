import 'package:flutter/material.dart';

class BosaltimSistemi extends StatelessWidget {
  const BosaltimSistemi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Ekranın genişliğini ve yüksekliğini almak için MediaQuery kullanıyoruz.
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Boşaltım Sistemi',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.green,
      ),
      body: Container(
        color: Colors.lightGreen[100], // Arka plan rengi
        padding:
            EdgeInsets.all(screenWidth * 0.04), // Padding'i dinamik yapıyoruz
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Boşaltım Sistemi',
                style: TextStyle(
                  fontSize: screenWidth * 0.08, // Dinamik font büyüklüğü
                  color: Colors.green,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: screenHeight * 0.03), // Dinamik boşluk
              Image.asset(
                'assets/images/bosaltim_sistemi.jpg',
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
                        'Boşaltım sistemini böbrekler, üreter (idrar borusu), idrar kesesi ve üretra (idrar kanalı) oluşturmaktadır.',
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
                        'Kalın Bağırsak:',
                        style: TextStyle(
                          fontSize:
                              screenWidth * 0.05, // Dinamik font büyüklüğü
                          color: Colors.green,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: screenHeight * 0.01), // Dinamik boşluk
                      Text(
                        'Besin atıklarının, safra kalıntılarının ve suyun vücuttan dışarı atılmasını sağlar.',
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
                        'Deri:',
                        style: TextStyle(
                          fontSize:
                              screenWidth * 0.05, // Dinamik font büyüklüğü
                          color: Colors.green,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: screenHeight * 0.01), // Dinamik boşluk
                      Text(
                        'Terleme ile vücuttaki su ve tuzun bir kısmının vücuttan uzaklaştırılmasına yardımcı olur. Terleme, vücut sıcaklığının dengelenmesine katkı sağlar.',
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
                        'Akciğerler:',
                        style: TextStyle(
                          fontSize:
                              screenWidth * 0.05, // Dinamik font büyüklüğü
                          color: Colors.green,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: screenHeight * 0.01), // Dinamik boşluk
                      Text(
                        'Solunum sırasında verilen soluk ile karbondioksit ve su buharının vücuttan uzaklaştırılmasını sağlar.',
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
