import 'package:flutter/material.dart';

class AsistensiFaida extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Gambar Segitiga'),
        ),
        body: Center(
          child: CustomPaint(
            painter: TrianglePainter(),
            child: Container(
              width: 200,
              height: 200,
            ),
          ),
        ),
      );
  }
}

class TrianglePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
      ..color = Colors.blue
      ..style = PaintingStyle.fill;

    var path = Path();
    path.moveTo(size.width / 2, 0);
    path.lineTo(0, size.height);
    path.lineTo(size.width, size.height);
    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(TrianglePainter oldDelegate) => false;
}
