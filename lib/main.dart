import 'package:flutter/material.dart';
import 'package:flutter_application_1/bosaltim_sistemi.dart';
import 'package:flutter_application_1/dolasim_sistemi.dart';
import 'package:flutter_application_1/sindirim_sistemi.dart';
import 'package:flutter_application_1/solunum_sistemi.dart';
import 'package:qr_mobile_vision/qr_camera.dart';

void main() {
  runApp(const HomePage());
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp(),
    );
  }
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  String? qr;
  bool camState = false;
  bool dirState = false;
  bool pageRedirected = false;

  @override
  Widget build(BuildContext context) {
    // Ekran boyutlarına erişim
    final mediaQuery = MediaQuery.of(context);
    final screenWidth = mediaQuery.size.width;
    final screenHeight = mediaQuery.size.height;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Vücudumuzda Sistemler'),
        backgroundColor: Colors.purple,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            if (camState)
              Container(
                width: screenWidth * 0.8, // Ekranın %80'i kadar genişlik
                height: screenHeight * 0.4, // Ekranın %40'ı kadar yükseklik
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.orange, width: 5),
                ),
                child: QrCamera(
                  onError: (context, error) => Text(
                    error.toString(),
                    style: const TextStyle(color: Colors.red),
                  ),
                  cameraDirection:
                      dirState ? CameraDirection.FRONT : CameraDirection.BACK,
                  qrCodeCallback: (code) {
                    if (!pageRedirected) {
                      setState(() {
                        qr = code;
                        pageRedirected = true;
                        // QR koduna göre sayfa yönlendirme
                        if (qr == "Sindirim Sistemi") {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SindirimSistemi()),
                          ).then((_) {
                            setState(() {
                              qr = null;
                              pageRedirected = false;
                            });
                          });
                        } else if (qr == "Solunum Sistemi") {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SolunumSistemi()),
                          ).then((_) {
                            setState(() {
                              qr = null;
                              pageRedirected = false;
                            });
                          });
                        } else if (qr == "Dolaşım Sistemi") {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const DolasimSistemi()),
                          ).then((_) {
                            setState(() {
                              qr = null;
                              pageRedirected = false;
                            });
                          });
                        } else if (qr == "Boşaltım Sistemi") {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const BosaltimSistemi()),
                          ).then((_) {
                            setState(() {
                              qr = null;
                              pageRedirected = false;
                            });
                          });
                        }
                      });
                    }
                  },
                ),
              )
            else
              const Text("Lütfen Kamerayı açın"),
            Padding(
              padding: EdgeInsets.symmetric(vertical: screenHeight * 0.05),
              child: Text("Tanımlanan organ: $qr"),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Text("Kamera Aç"),
        onPressed: () {
          setState(() {
            camState = !camState;
          });
        },
      ),
    );
  }
}
