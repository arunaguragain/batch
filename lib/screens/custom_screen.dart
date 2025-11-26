import 'package:batch/common/my_snackbar.dart';
import 'package:batch/widgets/my_button.dart';
import 'package:batch/widgets/my_textformfield.dart';
import 'package:flutter/material.dart';

class CustomScreen extends StatefulWidget {
  const CustomScreen({super.key});

  @override
  State<CustomScreen> createState() => _CustomScreenState();
}

class _CustomScreenState extends State<CustomScreen> {
  final TextEditingController firstController = TextEditingController();
  final TextEditingController secondController = TextEditingController();

  final _gap = SizedBox(height: 10);

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Custom Screen')),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            MyTextformfield(
              hintText: 'e.g 12',
              controller: firstController,
              labeltext: 'enter first number',
              errorMessage: 'Please enter first number',
            ),
            _gap,

            MyTextformfield(
              hintText: 'e.g 10',
              controller: secondController,
              labeltext: 'enter second number',
              errorMessage: 'Please enter second number',
            ),
            MyButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  int firstNo = int.parse(firstController.text);
                  int secondNo = int.parse(secondController.text);
                  int sum = firstNo + secondNo;
                  showMySnackBar(context: context, message: 'Sum is $sum');
                }
              },
              text: 'Add',
            ),

            _gap,
            MyButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  int firstNo = int.parse(firstController.text);
                  int secondNo = int.parse(secondController.text);
                  int difference = firstNo - secondNo;
                  showMySnackBar(
                    context: context,
                    message: 'Difference is $difference',
                  );
                }
              },
              text: 'Subtract',
              color: Colors.green,
            ),
          ],
        ),
      ),
    );
  }
}
