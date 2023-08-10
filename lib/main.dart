import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'bmi_calculator.dart';

void main() {
  runApp(app());
}

class app extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'bmiapp',
      home: bmi(),
    );
  }
}

class bmi extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return bmiState();
  }
}
class bmiState extends State<bmi>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: bmi_calculator(),
    );
  }
}
