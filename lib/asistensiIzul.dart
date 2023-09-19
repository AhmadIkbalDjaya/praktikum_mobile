import 'package:flutter/material.dart';

class AsistensiIzul extends StatelessWidget {
  const AsistensiIzul({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 300,
          width: 300,
          decoration: BoxDecoration(
            border: Border.all(),
            // color: Colors.black,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    color: Colors.red,
                  ),
                  Container(
                    width: 100,
                    height: 100,
                    color: Colors.red,
                  ),
                ],
              ),
              Container(
                height: 100,
                width: 200,
                color: Colors.red,
              )
            ],
          ),
        ),
      ),
    );
  }
}
