import 'package:flutter/material.dart';

class ContainerScreen extends StatelessWidget {
  const ContainerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[50],
      appBar: AppBar(
        title: Text("Container Screen"),
        backgroundColor: Colors.blueGrey,
      ),
      body: Center(
        child: Container(
          // width: 200,
          // height: 200,
          // alignment: Alignment.center,
          // decoration: BoxDecoration(
          //   color: Colors.amberAccent,
          //   border: Border.all(color: Colors.black, width: 2),
          //   shape: BoxShape.circle,
          // ),
          width: double.infinity,
          height: double.infinity,
          alignment: Alignment.centerRight,
          child: const Text('Hello World', style: TextStyle(fontSize: 30)),
        ),
      ),
    );
  }
}
