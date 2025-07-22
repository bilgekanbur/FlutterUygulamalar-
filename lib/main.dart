import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  final url =
      "https://img.freepik.com/premium-vector/free-vector-beautiful-flying-hummingbird-design-element-banners-posters-leaflets-brochur_1009653-1.jpg?semt=ais_hybrid&w=740";

  Widget _buildItem(String value, String label) {
    return Expanded(
      child: Column(
        children: [
          Text(
            value,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          Text(label, style: TextStyle(fontSize: 14)),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(title: const Text("Profil Sayfası"), centerTitle: true),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                CircleAvatar(
                  radius: 75,

                  backgroundColor: Colors.transparent,
                  backgroundImage: NetworkImage(url),
                ),
                SizedBox(height: 18),
                Text(
                  "Bilge Sena KANBUR",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  "Mobil Uygulama Geliştiricisi",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(height: 16),
                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Row(
                      children: [
                        _buildItem("521", "Takipçi"),
                        _buildItem("618", "Takip Edilen"),
                        _buildItem("5", "Atılan Gönderi"),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 15
                ),

                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Hakkımda",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 6),
                        Text(
                          "Flutter ile Mobil Geliştirmeyi Öğrenmekteyim.Ayrıca Kotlin ile de mobil uygulama projeleri geliştirmekteyim.",
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 8
                ),
                Card(
                  child:Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Eğitim Bilgileri",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold
                        ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Lisans",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold
                            ),
                            ),
                            Text("Atatürk Üniversitesi-Bilgisayar Mühendisliği",
                            style: TextStyle(
                              fontSize: 16,
                             
                            ),
                            ),
                            Text("Yüksek Lisans",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold
                            ),
                            ),
                            Text("Atatürk Üniversitesi-Bilgisayar Mühendisliği Tezli YL",
                            style: TextStyle(
                              fontSize: 16,
                             
                            ),
                            ),
                          ],
                        ),

                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
 //yuvarlak resimler için bu kullanılır
                //Image.network(src)//widget bekleniyorsa bunu kullan
                //NetworkImage(url) değilse bunu