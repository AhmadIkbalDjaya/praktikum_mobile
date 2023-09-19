import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Color backgroundBody = Colors.white;
  int circleCount = 1;
  int count = 1;
  bool? greenBg = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("MID"),
        ),
        body: Container(
          color: backgroundBody,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 300,
                padding: EdgeInsets.all(10),
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 6,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 5),
                  itemCount: count,
                  itemBuilder: (context, index) {
                    return Container(
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: Center(
                        child: Icon(Icons.person),
                      ),
                    );
                  },
                ),
              ),
              Container(
                height: 300,
                child: Column(
                  children: [
                    TextFormField(
                      keyboardType: TextInputType.number,
                      onChanged: (value) {
                        if (value.isNotEmpty) {
                          circleCount = int.parse(value);
                        }
                      },
                      decoration: InputDecoration(
                        hintText: "Masukkan Angka",
                        border: OutlineInputBorder(),
                        contentPadding:
                            EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          count = circleCount;
                        });
                      },
                      child: Text("gass"),
                    ),
                    Row(
                      children: [
                        Checkbox(
                          value: greenBg,
                          onChanged: (value) {
                            setState(() {
                              backgroundBody = Colors.green;
                              greenBg = value;
                              if (greenBg == false) {
                                backgroundBody = Colors.white;
                              }
                            });
                          },
                        ),
                        Text("Green"),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        drawer: Drawer(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 25),
                color: Colors.blue,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 30,
                          child: Icon(
                            Icons.person,
                            color: Colors.black,
                          ),
                        ),
                        Row(
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.white,
                              child: Icon(
                                Icons.person,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(width: 10),
                            CircleAvatar(
                              backgroundColor: Colors.white,
                              child: Icon(
                                Icons.person,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    SizedBox(height: 15),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Ahmad Ikbal Djaya",
                          style: TextStyle(color: Colors.white),
                        ),
                        Text(
                          "60200120073@uin-alauddin.ac.id",
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 35, vertical: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    InkWell(
                      child: Container(
                        width: 50,
                        height: 50,
                        color: Colors.red,
                      ),
                      onTap: () {
                        setState(() {
                          backgroundBody = Colors.red;
                        });
                      },
                    ),
                    InkWell(
                      child: Container(
                        width: 50,
                        height: 50,
                        color: Colors.grey,
                      ),
                      onTap: () {
                        setState(() {
                          backgroundBody = Colors.grey;
                        });
                      },
                    ),
                    InkWell(
                      child: Container(
                        width: 50,
                        height: 50,
                        color: Colors.amber,
                      ),
                      onTap: () {
                        setState(() {
                          backgroundBody = Colors.amber;
                        });
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
