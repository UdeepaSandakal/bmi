import 'package:flutter/material.dart';

import 'bmi_veiw.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BMICal',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: BMIView(),
    );
  }
}
