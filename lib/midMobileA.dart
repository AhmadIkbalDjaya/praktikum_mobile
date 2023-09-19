import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 0, 23, 86),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: const Icon(Icons.menu, size: 30),
          title: const Row(
            children: [
              Icon(Icons.arrow_back_ios_outlined),
              Expanded(
                child: Center(
                  child: Text("PAYMENT"),
                ),
              ),
            ],
          ),
          centerTitle: true,
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 20),
              child: Icon(Icons.settings),
            )
          ],
        ),
        body: Column(
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 35, vertical: 25),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 45,
                    backgroundImage: AssetImage("images/profile.jpg"),
                  ),
                  SizedBox(width: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "BALANCE",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 40, 78, 134),
                        ),
                      ),
                      Text(
                        "\$8,180.20",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 35,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Expanded(
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 35, vertical: 30),
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: GridView(
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          mainAxisSpacing: 15,
                        ),
                        children: const [
                          PayItem(
                            name: "Water",
                            color: Colors.lightBlue,
                            icon: Icons.water_drop,
                          ),
                          PayItem(
                            name: "Electricity",
                            color: Colors.amber,
                            icon: Icons.lightbulb_sharp,
                          ),
                          PayItem(
                            name: "Gas",
                            color: Colors.redAccent,
                            icon: Icons.local_fire_department,
                          ),
                          PayItem(
                            name: "Shopping",
                            color: Colors.pink,
                            icon: Icons.shopping_bag,
                          ),
                          PayItem(
                            name: "Phone",
                            color: Colors.blue,
                            icon: Icons.phone_android,
                          ),
                          PayItem(
                            name: "Credit Card",
                            color: Colors.green,
                            icon: Icons.credit_card,
                          ),
                          PayItem(
                            name: "Insurance",
                            color: Color.fromARGB(255, 7, 114, 11),
                            icon: Icons.shield_moon_sharp,
                          ),
                          PayItem(
                            name: "Mortgage",
                            color: Colors.purple,
                            icon: Icons.home,
                          ),
                          PayItem(
                            name: "Other Bills",
                            color: Colors.blueGrey,
                            icon: Icons.edit_document,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 15),
                    const Text(
                      "more >>",
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PayItem extends StatelessWidget {
  final String name;
  final Color color;
  final IconData icon;
  const PayItem(
      {super.key, required this.name, required this.color, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 45,
          backgroundColor: color,
          child: Icon(
            icon,
            size: 50,
            color: Colors.white,
          ),
        ),
        const SizedBox(height: 5),
        Text(name),
      ],
    );
  }
}
