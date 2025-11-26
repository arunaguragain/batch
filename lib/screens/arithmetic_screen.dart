import 'package:flutter/material.dart';

// Singlechild : child :
// multichild : children: [] ->
//COlumn , -> TOp to bottom
// Row -> left - > rifht

// Two types of widgets
//1. StatelessWidget : jati khera data change hudaina
//2. StatefulWidget : jati khera data/state change huncha

class ArithmeticScreen extends StatefulWidget {
  const ArithmeticScreen({super.key});

  @override
  State<ArithmeticScreen> createState() => _ArithmeticScreenState();
}

class _ArithmeticScreenState extends State<ArithmeticScreen> {
  int first = 0;
  int second = 0;
  int result = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Arithmetic"), backgroundColor: Colors.green),
      body: Padding(
        padding: EdgeInsetsGeometry.all(8),
        child: Column(
          children: [
            TextField(
              onChanged: (value) {
                first = int.parse(value);
              },
              decoration: InputDecoration(
                labelText: "Enter first no",
                hintText: "e.g 12",
                border: OutlineInputBorder(),
              ),
            ),
            //Invisible Box
            SizedBox(height: 8),
            TextField(
              //Styling : css
              decoration: InputDecoration(
                labelText: "Enter first no",
                hintText: "e.g 12",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 8),
            //Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: Text("Add", style: TextStyle(fontSize: 20)),
              ),
            ),

            SizedBox(height: 8),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: Text("Subtract", style: TextStyle(fontSize: 20)),
              ),
            ),

            SizedBox(height: 8),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: Text("Multiply", style: TextStyle(fontSize: 20)),
              ),
            ),

            SizedBox(height: 8),
            Text("Result is :", style: TextStyle(fontSize: 20)),
          ],
        ),
      ),
    );
  }
}
