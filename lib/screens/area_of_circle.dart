import 'package:flutter/material.dart';

class AreaOfCircleScreen extends StatefulWidget {
  const AreaOfCircleScreen({super.key});

  @override
  State<AreaOfCircleScreen> createState() => _AreaOfCircleScreenState();
}

class _AreaOfCircleScreenState extends State<AreaOfCircleScreen> {
  double radius = 0;
  double result = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: const Color.fromARGB(255, 152, 209, 235),
      appBar: AppBar(
        title: Text("Area of Circle"),
        backgroundColor: const Color.fromARGB(255, 152, 209, 235),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [
            SizedBox(height: 48),
            TextField(
              onChanged: (value) {
                radius = double.parse(value);
              },
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(30.0)),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.red),
                  borderRadius: BorderRadius.all(Radius.circular(30.0)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.green),
                  borderRadius: BorderRadius.all(Radius.circular(30.0)),
                ),
                labelText: "Enter radius",
                hintText: "e.g 5",
              ),
            ),

            SizedBox(height: 18),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    result = 3.14 * radius * radius;
                  });
                },
                child: Text("Calculate area", style: TextStyle(fontSize: 20)),
              ),
            ),

            SizedBox(height: 8),
            Text("Result is : $result", style: TextStyle(fontSize: 20)),
          ],
        ),
      ),
    );
  }
}
