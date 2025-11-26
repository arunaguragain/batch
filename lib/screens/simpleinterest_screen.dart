import 'package:flutter/material.dart';

class SimpleinterestScreen extends StatelessWidget {
  const SimpleinterestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Simple Interest"),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: EdgeInsetsGeometry.all(8),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                labelText: "Enter Principle amount",
                hintText: "e.g 12000",
                border: OutlineInputBorder(),
              ),
            ),

            SizedBox(height: 8),

            TextField(
              decoration: InputDecoration(
                labelText: "Enter Rate",
                hintText: "e.g 0.05",
                border: OutlineInputBorder(),
              ),
            ),

            SizedBox(height: 8),

            TextField(
              decoration: InputDecoration(
                labelText: "Enter Time",
                hintText: "e.g 2",
                border: OutlineInputBorder(),
              ),
            ),

            SizedBox(height: 8),

            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: Text("Calculate", style: TextStyle(fontSize: 20)),
              ),
            ),
            SizedBox(height: 8),
          ],
        ),
      ),
    );
  }
}
