import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';

class HeightComponent extends StatefulWidget {
  Function(int) height; //To pass data to outside

  HeightComponent({required this.height});

  @override
  State<HeightComponent> createState() => _HeightComponentState();
}

class _HeightComponentState extends State<HeightComponent> {
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
            '183cm', //This is just hard coded now
            style: TextStyle(
                fontSize: 40.0,
                color: Colors.white,
                fontWeight: FontWeight.bold),
          ),
          Slider(
            value: 150,
            onChanged: (value) {},
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
