import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String selectedOption = 'Pilihan 1';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Asistensi L4"),
        ),
        drawer: Drawer(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                DropdownButton(
                  value: selectedOption, // Nilai opsi yang dipilih
                  onChanged: (value) {
                    setState(() {
                      selectedOption = value;
                    });
                  },
                  items: [
                    'Pilihan 1',
                    'Pilihan 2',
                    'Pilihan 3',
                    'Pilihan 4',
                  ].map<DropdownMenuItem>((String value) {
                    return DropdownMenuItem(
                      value: value,
                      child: Text(
                          value), // Teks yang ditampilkan untuk setiap opsi
                    );
                  }).toList(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
