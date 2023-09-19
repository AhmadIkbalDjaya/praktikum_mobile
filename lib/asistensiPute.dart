import 'package:flutter/material.dart';

class AsistensiPute extends StatelessWidget {
  const AsistensiPute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            Container(
              height: 100,
              width: 100,
              color: Colors.amber,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(60, 60, 0, 0),
              child: Container(
                height: 100,
                width: 100,
                color: Colors.red,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(120, 120, 0, 0),
              child: Container(
                height: 100,
                width: 100,
                color: Colors.blue,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
