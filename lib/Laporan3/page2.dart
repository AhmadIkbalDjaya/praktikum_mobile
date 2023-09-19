import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  final String nama, umur;
  const Page2({
    Key? key,
    required this.nama,
    required this.umur,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Welcom \nTo \nMobile \nLegend",
              style: TextStyle(fontSize: 90),
              textAlign: TextAlign.center,
            ),
            Text("Email : " + nama.toString()),
            Text("Password : " + umur.toString()),
          ],
        ),
      ),
    );
  }
}
