import 'package:flutter/material.dart';

class No1 extends StatelessWidget {
  const No1({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: const [
          RowWithBox(box: 3),
          RowWithBox(box: 2),
          RowWithBox(box: 1),
          RowWithBox(box: 2),
          RowWithBox(box: 3),
        ],
      ),
    );
  }
}

class RowWithBox extends StatelessWidget {
  final int box;
  const RowWithBox({super.key, required this.box});
  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: List.generate(box, (index) => const Box()));
  }
}

class Box extends StatelessWidget {
  const Box({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(height: 100, width: 100, color: Colors.green[200]);
  }
}
