import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class BMIView extends StatefulWidget {
  const BMIView({super.key});

  @override
  State<BMIView> createState() => _BMIViewState();
}

class _BMIViewState extends State<BMIView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Text('BMI Calculator'),
        backgroundColor: Colors.blueGrey,
      ),
    );
  }
}
