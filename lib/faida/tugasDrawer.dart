import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        colorScheme: ColorScheme.dark(
          primary: Color.fromARGB(255, 64, 67, 76),
          onPrimary: Colors.white,
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Tugas Pertemuan 5"),
        ),
        endDrawer: Drawer(
          child: Row(
            children: [
              Container(
                padding: EdgeInsets.symmetric(vertical: 25, horizontal: 10),
                color: Colors.black38,
                child: Column(
                  children: [
                    CircleAvatar(
                      backgroundColor: Color.fromARGB(255, 45, 44, 44),
                      radius: 25,
                      child: Icon(Icons.message),
                    ),
                    SizedBox(height: 10),
                    Container(
                      color: Color.fromARGB(164, 109, 109, 109),
                      height: .5,
                      width: 40,
                    ),
                    SizedBox(height: 10),
                    CircleAvatar(
                      backgroundColor: Color.fromARGB(255, 45, 44, 44),
                      radius: 25,
                      child: Icon(Icons.favorite, color: Colors.red),
                    ),
                    SizedBox(height: 15),
                    CircleAvatar(
                      backgroundColor: Color.fromARGB(255, 45, 44, 44),
                      radius: 25,
                      child: Icon(Icons.music_note, color: Colors.green),
                    ),
                    SizedBox(height: 15),
                    CircleAvatar(
                      backgroundColor: Color.fromARGB(255, 45, 44, 44),
                      radius: 25,
                      child: Icon(Icons.account_balance, color: Colors.white),
                    ),
                    SizedBox(height: 15),
                    CircleAvatar(
                      backgroundColor: Color.fromARGB(255, 45, 44, 44),
                      radius: 25,
                      child: Icon(Icons.photo_camera, color: Colors.amber),
                    ),
                    SizedBox(height: 15),
                    CircleAvatar(
                      backgroundColor: Color.fromARGB(255, 45, 44, 44),
                      radius: 25,
                      child: Icon(Icons.laptop, color: Colors.deepOrangeAccent),
                    ),
                    SizedBox(height: 15),
                  ],
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 35),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Icon(Icons.space_dashboard),
                                SizedBox(width: 10),
                                Text(
                                  "ANGKRINGAN",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            Icon(Icons.more_horiz),
                          ],
                        ),
                      ),
                      SizedBox(height: 25),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25),
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.person_add_alt_sharp),
                              Text("Invite"),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 25),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.keyboard_arrow_down_sharp),
                              Text("SELAMAT DATANG"),
                            ],
                          ),
                          SizedBox(height: 10),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 25),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Icon(Icons.tag_sharp),
                                    SizedBox(width: 10),
                                    Icon(Icons.face, color: Colors.blue),
                                    Text("Jimin"),
                                  ],
                                ),
                                SizedBox(height: 15),
                                Row(
                                  children: [
                                    Icon(Icons.tag_sharp),
                                    SizedBox(width: 10),
                                    Icon(Icons.person,
                                        color: Colors.limeAccent),
                                    Text("Jungkook"),
                                  ],
                                ),
                                SizedBox(height: 15),
                                Row(
                                  children: [
                                    Icon(Icons.lock_reset_rounded),
                                    SizedBox(width: 10),
                                    Icon(Icons.face_3, color: Colors.orange),
                                    Text("Song Hye-kyo"),
                                  ],
                                ),
                                SizedBox(height: 15),
                                Row(
                                  children: [
                                    Icon(Icons.lock_reset_rounded),
                                    SizedBox(width: 10),
                                    Icon(Icons.emoji_people_sharp,
                                        color: Colors.lightGreen),
                                    Text("Song Joong-ki"),
                                  ],
                                ),
                                SizedBox(height: 15),
                                Row(
                                  children: [
                                    Icon(Icons.lock),
                                    SizedBox(width: 10),
                                    Icon(Icons.face_5_rounded,
                                        color: Colors.cyan),
                                    Text("Lee Dohyun"),
                                  ],
                                ),
                                SizedBox(height: 15),
                              ],
                            ),
                          )
                        ],
                      )
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
