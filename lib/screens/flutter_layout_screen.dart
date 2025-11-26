import 'package:flutter/material.dart';

class FlutterLayoutScreen extends StatelessWidget {
  const FlutterLayoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Layout"),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Column(
          children: [
            Container(
              height: 180,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 2),
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        Icon(Icons.call, size: 80),
                        Text(
                          "CALL",
                          style: TextStyle(fontSize: 20, color: Colors.red),
                        ),
                      ],
                    ),
                  ),

                  // Spacer(),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        Icon(
                          Icons.navigation_outlined,
                          size: 80,
                          color: Colors.red,
                        ),
                        Text(
                          "ROUTE",
                          style: TextStyle(fontSize: 20, color: Colors.red),
                        ),
                      ],
                    ),
                  ),

                  // Spacer(),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        Icon(Icons.share, size: 80),
                        Text(
                          "SHARE",
                          style: TextStyle(fontSize: 20, color: Colors.red),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 28),

            Container(
              height: 480,
              width: 300,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 2),
              ),
              child: Column(
                children: [
                  Column(
                    children: [
                      Icon(Icons.call, size: 80),
                      Text(
                        "CALL",
                        style: TextStyle(fontSize: 20, color: Colors.red),
                      ),
                    ],
                  ),

                  Spacer(),

                  Column(
                    children: [
                      Icon(
                        Icons.navigation_outlined,
                        size: 80,
                        color: Colors.red,
                      ),
                      Text(
                        "ROUTE",
                        style: TextStyle(fontSize: 20, color: Colors.red),
                      ),
                    ],
                  ),

                  Spacer(),

                  Column(
                    children: [
                      Icon(Icons.share, size: 80),
                      Text(
                        "SHARE",
                        style: TextStyle(fontSize: 20, color: Colors.red),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
