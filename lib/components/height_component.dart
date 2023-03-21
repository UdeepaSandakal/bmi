import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';

class HeightComponent extends StatefulWidget {
  Function(double) height; //To pass data to outside

  HeightComponent({required this.height}); // creating constuctor

  @override
  State<HeightComponent> createState() => _HeightComponentState();
}

class _HeightComponentState extends State<HeightComponent> {
  double value = 150;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: double.infinity,
      color: Colors.black38,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            'Height',
            style: TextStyle(fontSize: 20.0, color: Colors.white),
          ),
          Text(
            '${value.toStringAsFixed(0)} cm', //show double value as int value
            style: TextStyle(
                fontSize: 40.0,
                color: Colors.white,
                fontWeight: FontWeight.bold),
          ),
          Slider(
            value: value,
            onChanged: (v) {
              widget.height(v); //to get value into outside
              setState(() {
                value = v;
              });
            },
            min: 0,
            max: 200,
            activeColor: Colors.amber,
            thumbColor: Colors.pinkAccent,
          ),
        ],
      ),
    );
  }
}
