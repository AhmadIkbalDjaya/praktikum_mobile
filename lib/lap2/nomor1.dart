import 'package:flutter/material.dart';

class Nomor1 extends StatelessWidget {
  const Nomor1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Box(warna: Colors.amber),
                Box(warna: Colors.green),
                Box(warna: Colors.amber),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [Box(warna: Colors.amber)],
          ),
          Container(
            width: 500,
            height: 100,
            color: Colors.green,
          ),
        ],
      ),
    );
  }
}

class Box extends StatelessWidget {
  final Color warna;
  const Box({super.key, required this.warna});

  @override
  Widget build(BuildContext context) {
    return Container(width: 100, height: 100, color: warna);
  }
}
