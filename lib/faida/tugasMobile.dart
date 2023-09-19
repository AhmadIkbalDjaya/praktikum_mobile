import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // mengubah warna background halaman
        backgroundColor: const Color.fromARGB(255, 157, 226, 219),
        body: Padding(
          // padding untuk memberikan jarak oada atas dan bawah column sebanyak 10 pixel
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Column(
            // mainaAxisAligment untuk memberikan jarak antara widget secara vertical
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const Text(
                "Hello! Faida",
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),
              ),
              // row pembungkus indoor outdoor
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // indoor
                  Container(
                    // memberikan padding pada outdoor agar tidak rapat dengan garis
                    padding: EdgeInsets.symmetric(vertical: 2, horizontal: 20),
                    child: Text(
                      "Indoor",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    decoration: BoxDecoration(
                      // memberikan border warna putih dan lebar border 2 px
                      border: Border.all(
                        color: Colors.white,
                        width: 2.0,
                      ),
                      // memberikan radius pada sudut indoor
                      borderRadius: BorderRadius.circular(100),
                    ),
                  ),
                  // outdoor
                  Container(
                    // memberikan padding pada outdoor agar tidak rapat dengan garis
                    padding: EdgeInsets.symmetric(vertical: 2, horizontal: 20),
                    child: Text(
                      "Outdoor",
                      style: TextStyle(
                        fontSize: 20,
                        color: Color.fromARGB(255, 157, 226, 219),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    decoration: BoxDecoration(
                      // memberikan background color berwarnah putih
                      color: Colors.white,
                      // memberikan border warna putih dan lebar border 2 px
                      border: Border.all(
                        color: Colors.white,
                        width: 2.0,
                      ),
                      // memberikan radius pada sudut indoor
                      borderRadius: BorderRadius.circular(100),
                    ),
                  ),
                ],
              ),
              // Column untuk menampung box bunga
              Column(
                children: [
                  // memanggil widget Plant Box dengan nama gambar "images/image1.png"
                  PlantBox(gambar: "images/image1.png", nama: "Bunga Tulip"),
                  // memberikan jarak 15 px antara box bunga
                  SizedBox(height: 15),
                  // memanggil widget Plant Box dengan nama gambar "images/image2.png"
                  PlantBox(gambar: "images/image2.png", nama: "Bunga Mawar"),
                ],
              ),
              // navigation bar
              Row(
                // mainAxisAligment unutk memberikan jarak di antara icon
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(
                    Icons.arrow_back_ios_new_outlined,
                    color: Colors.white,
                    size: 40,
                  ),
                  Icon(
                    Icons.favorite,
                    color: Colors.white,
                    size: 40,
                  ),
                  Icon(
                    Icons.bookmark,
                    color: Colors.white,
                    size: 40,
                  ),
                  Icon(
                    Icons.window_rounded,
                    color: Colors.white,
                    size: 40,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

// class Plant Box untuk box gambar
class PlantBox extends StatelessWidget {
  // menerima nama gambar dan nama tanaman saat widget dipanggil
  final String gambar;
  final String nama;
  const PlantBox({super.key, required this.gambar, required this.nama});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Image.asset("$gambar"),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "$nama",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w600,
                  color: Colors.black54,
                ),
              ),
              Text(
                "Lorem ipsum dolor sit amet,\nconsectetuer adipiscing elit,\ndiam nonummy",
                style: TextStyle(color: Colors.grey),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Column(
                    children: [
                      // memanggil widget progress bar yang telah dibuat sebelumnya
                      Progress(),
                      // memberikan jarak 5 pixel di bawah bar
                      SizedBox(height: 5),
                      // memanggil widget progress bar yang telah dibuat sebelumnya
                      Progress(),
                      // memberikan jarak 5 pixel di bawah bar
                      SizedBox(height: 5),
                      // memanggil widget progress bar yang telah dibuat sebelumnya
                      Progress(),
                    ],
                  ),
                  // membuat lingkaran ke ujung
                  Padding(
                    padding: const EdgeInsets.only(left: 30),
                    // untuk membuat lingkaran
                    child: CircleAvatar(
                      radius: 30,
                      backgroundColor: Color.fromARGB(255, 157, 226, 219),
                      child: Text(
                        "\$10",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
      // memberi tinggi plant box
      height: 250,
      // memberikan padding pada plant box
      padding: EdgeInsets.all(20),
      // mamberikan margin di sebelah kanan plant box
      margin: EdgeInsets.only(right: 20),
      // memberikan warnah putih dan radius pada kanan atas dan kanan bawah
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(30.0),
          bottomRight: Radius.circular(30.0),
        ),
      ),
    );
  }
}

// widget unutk menampilkan progress bar
class Progress extends StatelessWidget {
  const Progress({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Lorem Ipsum",
            style: TextStyle(
              fontWeight: FontWeight.w600,
              color: Colors.black54,
            ),
          ),
          // memberikan jarak 8 px pada bawah bar
          SizedBox(height: 8),
          // memberikan radius pada bar
          ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            child: LinearProgressIndicator(
              // membuat bar 50% atau setengah
              // nilainya 0-1 yang mewakili 0-100%
              value: 0.5,
              // memberikan warna pada 50 bar
              valueColor: AlwaysStoppedAnimation<Color>(
                  Color.fromARGB(255, 255, 153, 0)),
              // memberikan warna pada bar
              backgroundColor: Color(0xffD6D6D6),
              // memberi tinggi pada bar
              minHeight: 6,
            ),
          ),
        ],
      ),
    );
  }
}
