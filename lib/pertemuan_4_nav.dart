import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("page1"),
        centerTitle: true,
      ),
      body: ListTile(
        leading: Icon(Icons.person),
        title: Text("random"),
        subtitle: Text("haloooo"),
      ),
    );
  }
}
