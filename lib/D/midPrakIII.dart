import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
    routes: {
      '/second': (context) => SecondPage(),
    },
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final TextEditingController _urlController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();
  Color _bg = Colors.blue;
  bool _isGreen = false;

  void _submitForm() {
    String url = _urlController.text;
    String name = _nameController.text;

    Navigator.pushNamed(
      context,
      '/second',
      arguments: {'url': url, 'name': name},
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Input Data')),
      endDrawer: Drawer(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 25),
              color: _bg,
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
                        "Nur Faida Ulfa",
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        "60200120018@uin-alauddin.ac.id",
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    child: CircleAvatar(
                      radius: 25,
                      backgroundColor: Colors.red,
                    ),
                    onTap: () {
                      setState(() {
                        _bg = Colors.red;
                      });
                    },
                  ),
                  InkWell(
                    child: CircleAvatar(
                      radius: 25,
                      backgroundColor: Colors.grey,
                    ),
                    onTap: () {
                      setState(() {
                        _bg = Colors.grey;
                      });
                    },
                  ),
                  InkWell(
                    child: CircleAvatar(
                      radius: 25,
                      backgroundColor: Colors.amber,
                    ),
                    onTap: () {
                      setState(() {
                        _bg = Colors.amber;
                      });
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.network(
                      "https://assets.pikiran-rakyat.com/crop/0x0:0x0/x/photo/2022/03/15/1266246679.jpeg"),
                ),
                TextField(
                  controller: _urlController,
                  decoration: InputDecoration(labelText: 'URL Gambar'),
                ),
                TextField(
                  controller: _nameController,
                  decoration: InputDecoration(labelText: 'Nama'),
                ),
                ElevatedButton(
                  onPressed: _submitForm,
                  child: Text('Submit'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Map<String, dynamic> args =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    String url = args['url'];
    String name = args['name'];

    return Scaffold(
      appBar: AppBar(title: Text('Data Result')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.network(
            url,
            fit: BoxFit.cover,
          ),
          SizedBox(height: 16.0),
          Text('$name'),
        ],
      ),
    );
  }
}
