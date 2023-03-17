import 'package:flutter/material.dart';

class GenderComponent extends StatelessWidget {
  IconData icon;
  String name;
  GenderComponent({required this.icon, required this.name});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      //To take the full space of the display,eventually it will take half of the screen
      child: Container(
        height: 190,
        color: Colors.black38,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(
              icon,
              color: Colors.white,
              size: 80.0,
            ),
            Text(
              name,
              style: TextStyle(
                fontSize: 25.0,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
