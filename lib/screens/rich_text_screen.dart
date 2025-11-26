import 'package:flutter/material.dart';

class RichTextScreen extends StatelessWidget {
  const RichTextScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Text class"),
        backgroundColor: Colors.blueGrey,
      ),
      body: Column(
        children: [
          Container(
            color: Colors.grey,
            width: 300,
            child: const Text(
              'Hello World',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.red,
              ),
            ),
          ),
          Container(
            color: Colors.green,
            width: 300,
            child: const Text(
              'Aruna',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.red,
              ),
            ),
          ),

          RichText(
            text: const TextSpan(
              style: TextStyle(color: Colors.black, fontSize: 30),
              children: <TextSpan>[
                TextSpan(
                  text: ' H',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.red,
                    fontSize: 50,
                  ),
                ),
                TextSpan(text: 'ello'),
                TextSpan(
                  text: ' bold',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.amber,
                  ),
                ),
                TextSpan(text: ' world!'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
