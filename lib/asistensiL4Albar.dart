import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Asistensi L4"),
          backgroundColor: Colors.green[600],
        ),
        body: Center(
          child: Text(
            "SPAN PTKIN 2022",
            style: TextStyle(fontSize: 30),
          ),
        ),
        drawer: Drawer(
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(color: Colors.green[600]),
                height: 150,
                width: 1000,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "SPANPTKIN 2022",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                      ),
                    ),
                    CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.white,
                      child: Text(
                        "A",
                        style: TextStyle(
                          fontSize: 25,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Column(
                  children: [
                    ListItem(icon: Icons.home, text: "Beranda"),
                    ListItem(icon: Icons.list, text: "Alur Daftar"),
                    ListItem(
                        icon: Icons.calendar_today_sharp,
                        text: "Jadwal Pelaksanaan"),
                    ListItem(icon: Icons.phone, text: "Kontak"),
                    ListItem(
                        icon: Icons.phone_bluetooth_speaker_outlined,
                        text: "Pemberitahuan"),
                    ListItem(icon: Icons.chat, text: "SAPA"),
                    ListItem(icon: Icons.login, text: "Login"),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ListItem extends StatelessWidget {
  final IconData icon;
  final String text;
  const ListItem({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Icon(icon, size: 24, color: Colors.grey),
            SizedBox(width: 25),
            Text(
              text,
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ],
        ),
        SizedBox(height: 20),
      ],
    );
  }
}
