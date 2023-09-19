import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  double _sliderValue = 50;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Drawer"),
        ),
        endDrawer: Drawer(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 50,
              horizontal: 25,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Lokasi",
                      style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 50),
                      child: Text(
                        "Toko",
                        style: TextStyle(
                          fontSize: 26,
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Lokasi(isCheck: true, location: "Makassar"),
                    Lokasi(isCheck: false, location: "Gowa"),
                    Lokasi(isCheck: false, location: "Maros"),
                    Lokasi(isCheck: false, location: "Pangkep"),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Harga",
                      style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 50),
                      child: Text(
                        "Produk",
                        style: TextStyle(
                          fontSize: 26,
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Harga min"),
                                Text("1,000"),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Harga min"),
                                Text("1,000"),
                              ],
                            ),
                          ],
                        ),
                        Slider(
                          value: _sliderValue,
                          min: 1,
                          max: 100,
                          activeColor: Colors.amber,
                          onChanged: (newValue) {
                            setState(() {
                              _sliderValue = newValue;
                            });
                          },
                        ),
                        Text(
                          "${_sliderValue.toStringAsFixed(0)},000",
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Lokasi extends StatelessWidget {
  final bool isCheck;
  final String location;
  const Lokasi({super.key, required this.isCheck, required this.location});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          value: isCheck,
          onChanged: (value) {},
        ),
        Text(location),
      ],
    );
  }
}
