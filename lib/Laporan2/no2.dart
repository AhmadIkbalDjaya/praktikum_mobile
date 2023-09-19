import 'package:flutter/material.dart';

class No2 extends StatelessWidget {
  const No2({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(50),
        child: Column(
          children: const [
            RowWithBox(position: MainAxisAlignment.start, text: "Ikbal"),
            SizedBox(height: 25),
            RowWithBox(position: MainAxisAlignment.end, text: "Djaya"),
          ],
        ),
      ),
    );
  }
}

class RowWithBox extends StatelessWidget {
  final MainAxisAlignment position;
  final String text;
  const RowWithBox({super.key, required this.position, required this.text});
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: position,
      children: [
        Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black, width: 1),
            color: Colors.green[200],
          ),
          child: Center(child: Text(text)),
        ),
      ],
    );
  }
}
