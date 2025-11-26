import 'package:flutter/material.dart';

class ColumnScreen extends StatelessWidget {
  const ColumnScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Column Screen"),
        backgroundColor: Colors.blueGrey,
      ),
      body: Container(
        width: double.infinity,
        color: Colors.green,
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          // mainAxisAlignment: MainAxisAlignment.center,
          // mainAxisAlignment: MainAxisAlignment.end,
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          // mainAxisAlignment: MainAxisAlignment.spaceAround,
          // crossAxisAlignment: CrossAxisAlignment.start,
          // children: const [
          //   Icon(Icons.star, size: 50),
          //   Icon(Icons.star, size: 50),
          //   Icon(Icons.star, size: 50),
          // ],

          // crossAxisAlignment: CrossAxisAlignment.start,
          // crossAxisAlignment: CrossAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.end,
          // crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ElevatedButton(onPressed: () {}, child: const Text('Button1')),
            ElevatedButton(onPressed: () {}, child: const Text('Button2')),
            ElevatedButton(onPressed: () {}, child: const Text('Button3')),
          ],
        ),
      ),
    );
  }
}
