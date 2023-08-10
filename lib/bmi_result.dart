import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kdgaugeview/kdgaugeview.dart';

class Bmiresult extends StatefulWidget {
  var result;
  var gender;
  var height;
  var weight;
  var age;

  Bmiresult(
      {this.result = 50,
      this.gender = 'MALE',
      this.height,
      this.weight,
      this.age});

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return BmiresultState();
  }
}

class BmiresultState extends State<Bmiresult> {
  late var result = widget.result;
  late var gender = widget.gender;
  var bmistatus;
  var status;
  late Color statuscolor;

  @override
  Widget build(BuildContext context) {
    if (result < 18.5) {
      bmistatus = '  You are in the underweight range   ';
      status = 'Unhealthy';
      statuscolor = Colors.greenAccent;
    } else if (result > 18.5 && result < 24.9) {
      bmistatus = '  You are in the healthy weight  range  ';
      status = 'Healthy';
      statuscolor = Colors.green;
    } else if (result > 25 && result < 29.9) {
      bmistatus = '  You are in the overweight range  ';
      status = 'Overweight';
      statuscolor = Colors.redAccent;
    } else if (result > 30) {
      bmistatus = '  You are in the obese range   ';
      status = 'Obesity';
      statuscolor = Colors.red;
    }
    return Scaffold(
      backgroundColor: Colors.black45,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.black54,
          child: Column(
            children: [
              Container(
                height: 400,
                padding: EdgeInsets.all(30),
                margin: EdgeInsets.all(20),
                child: KdGaugeView(
                  minSpeed: 0,
                  maxSpeed: 100,
                  speed: result,
                  speedTextStyle: TextStyle(
                      color: Colors.blue,
                      fontSize: 50,
                      fontWeight: FontWeight.w900),
                  unitOfMeasurement: 'BMI',
                  unitOfMeasurementTextStyle:
                      TextStyle(color: Colors.blue, fontSize: 20),
                  gaugeWidth: 40,
                  innerCirclePadding: 30,
                  alertSpeedArray: [0, 18.5, 24.9, 29.9],
                  alertColorArray: [
                    Colors.greenAccent,
                    Colors.green,
                    Colors.redAccent,
                    Colors.red,
                  ],
                  fractionDigits: 1,
                  animate: true,
                  duration: Duration(seconds: 1),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 50,
                    decoration: BoxDecoration(
                        border: Border(
                            right: BorderSide(
                                width: 2, color: CupertinoColors.white),
                            left: BorderSide(
                                width: 2, color: CupertinoColors.white))),
                    child: Center(
                      child: Text(
                        '  $gender  ',
                        style: TextStyle(
                            fontSize: 25, color: CupertinoColors.white),
                      ),
                    ),
                  ),
                  Container(
                    height: 50,
                    decoration: BoxDecoration(
                        border: Border(
                      right: BorderSide(width: 2, color: CupertinoColors.white),
                    )),
                    child: Center(
                      child: Text(
                        '  ${widget.height}  ',
                        style: TextStyle(
                            fontSize: 25, color: CupertinoColors.white),
                      ),
                    ),
                  ),
                  Container(
                    height: 50,
                    decoration: BoxDecoration(
                        border: Border(
                      right: BorderSide(width: 2, color: CupertinoColors.white),
                    )),
                    child: Center(
                      child: Text(
                        '  ${widget.weight}kg  ',
                        style: TextStyle(
                            fontSize: 25, color: CupertinoColors.white),
                      ),
                    ),
                  ),
                  Container(
                    height: 50,
                    decoration: BoxDecoration(
                        border: Border(
                      right: BorderSide(width: 2, color: CupertinoColors.white),
                    )),
                    child: Center(
                      child: Text(
                        '  ${widget.age}y ',
                        style: TextStyle(
                            fontSize: 25, color: CupertinoColors.white),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                  margin: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.white.withOpacity(0.10),
                        spreadRadius: 70, //spread radius
                        blurRadius: 30, // blur radius
                        offset: Offset(-50, -30),
                      )
                    ],
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.transparent,
                          Colors.transparent,
                          statuscolor
                        ]),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(40),
                        bottomRight: Radius.circular(40),
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20)),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Your BMI Status',
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w600,
                            color: CupertinoColors.white),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        bmistatus,
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w600,
                            color: Colors.orangeAccent),
                        textAlign: TextAlign.center,
                      ),
                      Container(
                        height: 100,
                        child: Center(
                            child: Text(
                          status,
                          style: TextStyle(color: Colors.white, fontSize: 35),
                        )),
                        decoration: BoxDecoration(
                            color: statuscolor,
                            borderRadius: BorderRadius.circular(20)),
                        margin: EdgeInsets.all(30),
                      ),
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
