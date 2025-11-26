// import 'package:batch/screens/arithmetic_screen.dart';
// import 'package:batch/screens/area_of_circle.dart';
// import 'package:batch/screens/column_screen.dart';
// import 'package:batch/screens/container_screen.dart';
import 'package:batch/screens/custom_screen.dart';
// import 'package:batch/screens/flexible_expanded_screen.dart';
// import 'package:batch/screens/image_view_screen.dart';
// import 'package:batch/screens/row_screen.dart';
// import 'package:batch/screens/flutter_layout_screen.dart';
// import 'package:batch/screens/rich_text_screen.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: CustomScreen());
  }
}
