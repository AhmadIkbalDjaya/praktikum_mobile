import 'package:flutter/material.dart';

class No2D extends StatelessWidget {
  const No2D({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("App Bar"),
      ),
      body: Center(
        child: Stack(
          children: [
            Positioned(
              top: 130,
              left: 130,
              child: Container(
                width: 100,
                height: 100,
                color: Colors.red,
              ),
            ),
            Positioned(
              top: 180,
              left: 180,
              child: Container(
                width: 100,
                height: 100,
                color: Colors.blue,
              ),
            ),
            Positioned(
              top: 180,
              left: 180,
              child: Container(
                width: 50,
                height: 50,
                color: Colors.purple,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
