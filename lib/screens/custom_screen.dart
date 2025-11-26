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
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              MyTextformfield(
                hintText: 'e.g 12',
                controller: firstController,
                labelText: 'enter first number',
                errorMessage: 'Please enter first number',
              ),
              _gap,

              MyTextformfield(
                hintText: 'e.g 10',
                controller: secondController,
                labelText: 'enter second number',
                errorMessage: 'Please enter second number',
              ),
              _gap,

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
      ),
    );
  }
}

// import 'package:batch/widgets/my_button.dart';
// import 'package:batch/widgets/my_textformfield.dart';
// import 'package:flutter/material.dart';

// class CustomScreen extends StatefulWidget {
//   const CustomScreen({super.key});

//   @override
//   State<CustomScreen> createState() => _CustomScreenState();
// }

// class _CustomScreenState extends State<CustomScreen> {
//   final TextEditingController firstController = TextEditingController();
//   final TextEditingController secondController = TextEditingController();

//   final _gap = SizedBox(height: 10);

//   final _formKey = GlobalKey<FormState>();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text('Custom Screen')),
//       body: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: Form(
//           key: _formKey,
//           child: Column(
//             children: [
//               MyTextformfield(
//                 hintText: "Enter first no",
//                 controller: firstController,
//                 labelText: "Enter first no",
//                 errorMessage: "Please enter first number",
//               ),
//               _gap,
//               MyTextformfield(
//                 labelText: "Enter second no",
//                 hintText: "e.g 12",
//                 controller: secondController,
//                 errorMessage: "Please enter second number",
//               ),
//               _gap,
//               MyButton(
//                 text: "Addition",
//                 onPressed: () {
//                   if (_formKey.currentState!.validate()) {
//                     int firstNo = int.parse(firstController.text);
//                     int secondNo = int.parse(secondController.text);
//                     int sum = firstNo + secondNo;

//                     ScaffoldMessenger.of(
//                       context,
//                     ).showSnackBar(SnackBar(content: Text("Sum is $sum")));
//                   }
//                 },
//               ),
//               _gap,
//               MyButton(
//                 text: "Subtraction",
//                 onPressed: () {
//                   if (_formKey.currentState!.validate()) {
//                     int firstNo = int.parse(firstController.text);
//                     int secondNo = int.parse(secondController.text);
//                     int difference = firstNo - secondNo;

//                     ScaffoldMessenger.of(context).showSnackBar(
//                       SnackBar(content: Text("Difference is $difference")),
//                     );
//                   }
//                 },
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
