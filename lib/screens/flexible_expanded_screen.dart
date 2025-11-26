import 'package:batch/common/my_snackbar.dart';
import 'package:flutter/material.dart';

class FlexibleExpandedScreen extends StatelessWidget {
  const FlexibleExpandedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Flexible expanded screen")),
      body: Column(
        children: [
          Expanded(
            child: GestureDetector(
              onTap: () =>
                  showMySnackBar(context: context, message: 'I am container 1'),
              child: Container(
                width: double.infinity,
                color: Colors.yellow,
                alignment: Alignment.center,
                child: const Text(
                  'Container 1',
                  style: TextStyle(fontSize: 30),
                ),
              ),
            ),
          ),

          Expanded(
            child: GestureDetector(
              onDoubleTap: () => showMySnackBar(
                context: context,
                message: 'I am container 2',
                color: Colors.red,
              ),
              child: Container(
                width: double.infinity,
                color: Colors.green,
                alignment: Alignment.center,
                child: const Text(
                  'Container 2',
                  style: TextStyle(fontSize: 30),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
