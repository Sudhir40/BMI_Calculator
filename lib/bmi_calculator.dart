import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'bmi_result.dart';
class  bmi_calculator extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return bmi_calculatorState();
  }
}
class bmi_calculatorState extends State<bmi_calculator>{
  double firstname = 0.0;
  double secondtname = 0.0;
  double height = 100.5;
  bool isclickedfirst = true;
  bool isclickedsecnd = false;
  double min = 48;
  double max = 200;
  String unit = '  CM';
  int weight = 0;
  String age = '0';
  String gender = '';
  Color gendercolor = Colors.cyan;
  Color gendercontainer = Colors.black54;
  Color gendertextcolor = Colors.cyan;
  Color fegendercolor = Colors.cyan;
  Color fegendercontainer = Colors.black54;
  Color fegendertextcolor = Colors.cyan;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Container(
        child: Container(
          height: double.infinity,
          child: Column(children: [
            SizedBox(
              height: 5,
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        gendercontainer = Colors.cyan;
                        gendercolor = Colors.black;
                        fegendercontainer = Colors.black54;
                        fegendercolor = Colors.cyan;
                        fegendertextcolor = Colors.cyan;
                        gendertextcolor = Colors.black;
                        gender = 'male';
                        setState(() {});
                      },
                      child: Container(
                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: gendercontainer,
                            borderRadius:
                            BorderRadius.circular(10)),
                        child: Column(children: [
                          Expanded(
                            flex:8,
                            child: FittedBox(
                                child: Icon(
                                  Icons.man,
                                  color: gendercolor,
                                )),
                          ),
                          Expanded(
                            flex: 1,
                            child: FittedBox(
                              child: Text(
                                "MALE",
                                style: TextStyle(
                                    color: gendercolor),
                              ),
                            ),
                          )
                        ]),
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        gendercontainer = Colors.black54;
                        fegendercontainer = Colors.cyan;
                        gendercolor = Colors.cyan;
                        fegendercontainer = Colors.cyan;
                        fegendercolor = Colors.black;
                        gender = 'female';
                        setState(() {});
                      },
                      child: Container(
                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            color: fegendercontainer,
                            borderRadius:
                            BorderRadius.circular(10)),
                        child: Column(
                            crossAxisAlignment:
                            CrossAxisAlignment.center,
                            mainAxisAlignment:
                            MainAxisAlignment.center,
                            children: [
                              Expanded(
                                flex: 8,
                                  child: FittedBox(
                                      child: Icon(
                                        Icons.woman,
                                        size: max,
                                        color: fegendercolor,
                                      ))),
                              Expanded(
                                flex: 1,
                                child: FittedBox(
                                  child: Text(
                                    'FEMALE',
                                    style: TextStyle(
                                      //  fontSize: 20,
                                        color: fegendercolor),
                                  ),
                                ),
                              ),
                            ]),
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Colors.black54,
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 5,),
                    Expanded(
                      flex:1,
                      child: FittedBox(
                        
                        child: Container(
                          padding: EdgeInsets.all(2),
                          child: Text(
                            'HEIGHT',
                            style: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex:3,
                      child: Container(
                        child: FittedBox(
                          child: Row(
                            mainAxisAlignment:
                            MainAxisAlignment.center,
                            children: [
                              InkWell(
                                  onTap: () {
                                    if (height < max) {
                                      height = double.parse(
                                          (height + 0.1).toStringAsFixed(1));
                                    }
                                    setState(() {});
                                  },
                                  child: FittedBox(
                                    child: Icon(
                                      Icons.add_circle_sharp,
                                    
                                      color: Colors.black12,
                                    ),
                                  )),
                              SizedBox(
                                width: 10,
                              ),
                              FittedBox(
                                child: Text(
                                  height.toString(),
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      color: Colors.orange),
                                ),
                              ),
                              Text(
                                'cm',
                                style: TextStyle(
                                  color: Colors.orange,
                                ),
                                textAlign: TextAlign.end,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              InkWell(
                                  onTap: () {
                                    if (height > min) {
                                      height = double.parse(
                                          (height - 0.1).toStringAsFixed(1));
                                    }
                                    setState(() {});
                                  },
                                  child: FittedBox(
                                    child: Icon(
                                      CupertinoIcons.minus_circle_fill,
                                      color: Colors.black12,
                                    ),
                                  ))
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: SliderTheme(
                        data: SliderTheme.of(context).copyWith(
                          activeTickMarkColor: Colors.red,
                          thumbColor: Colors.blue,
                        ),
                        child: Slider(
                            value: height,
                            max: max,
                            min: min,
                            divisions: 1000,
                            onChanged: (double v) {
                              setState(() {
                                height = double.parse(
                                    v.toStringAsFixed(1));
                                if (height > 120.0 &&
                                    height < 130.0) {
                                  weight = 20;
                                  age = 10.toString();
                                } else if (height > 130.0 &&
                                    height < 140.0) {
                                  weight = 28;
                                  age = 12.toString();
                                } else if (height > 140.0 &&
                                    height < 150.0) {
                                  weight = 38;
                                  age = 15.toString();
                                } else if (height > 150.0 &&
                                    height < 160.0) {
                                  weight = 50;
                                  age = 18.toString();
                                } else if (height > 160.0 &&
                                    height < 170.0) {
                                  weight = 56;
                                  age = 20.toString();
                                } else if (height > 170.0 &&
                                    height < 180.0) {
                                  weight = 62;
                                } else if (height > 180.0 &&
                                    height < 190.0) {
                                  weight = 70;
                                } else if (height > 190.0 &&
                                    height < 200.0) {
                                  weight = 78;
                                }
                              });
                            }),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Container( 
                      margin: EdgeInsets.only(left: 10, right: 5),
                      decoration: BoxDecoration(
                          color: Colors.cyan,
                          borderRadius: BorderRadius.circular(20)),
                      child: Column(
                        crossAxisAlignment:
                        CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          Expanded(
                            flex: 1,
                            child: FittedBox(
                              child: Container(
                               // padding: EdgeInsets.all(10),
                                child: Text(
                                  'WEIGHT',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Expanded(
                            flex: 3,
                            child: FittedBox(
                              child: Text(
                                weight.toString(),
                                style: TextStyle(
                                     color: Colors.white),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 3,
                            child: Container(
                              padding: EdgeInsets.all(10),
                              child: FittedBox(
                                child: Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.center,
                                  children: [
                                    InkWell(
                                        onTap: () {
                                          weight = weight + 1;
                                          setState(() {});
                                        },
                                        child: Icon(
                                          Icons.add_circle_sharp,
                                          size: 50,
                                        )),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    InkWell(
                                        onTap: () {
                                          if (weight != 0) {
                                            weight = weight - 1;
                                          }
                                          setState(() {});
                                        },
                                        child: Icon(
                                          CupertinoIcons
                                              .minus_circle_fill,
                                          size: 50,
                                        )),
                                  ],
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(left: 5, right: 10),
                      decoration: BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadius.circular(20)),
                      
                      child: Column(
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          Expanded(
                            flex: 1,
                            child: FittedBox(
                              child: Container(
                                child: Text('AGE',
                                    style: TextStyle(fontSize: 30,fontWeight: FontWeight.w600  )),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Expanded(
                            flex:3,
                            child: FittedBox(
                              child: Text(
                                age,
                                style: TextStyle(
                                    fontSize: 50, color: Colors.white),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 3,
                            child: Container(
                              padding: EdgeInsets.all(10),
                              child: FittedBox(
                                child: Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.center,
                                  children: [
                                    InkWell(
                                        onTap: () {
                                          age = (int.parse(age) + 1).toString();
                                          setState(() {});
                                        },
                                        child: Icon(
                                          Icons.add_circle_sharp,
                                          size: 50,
                                        )),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    InkWell(
                                        onTap: () {
                                          if (int.parse(age) != 0) {
                                            age = (int.parse(age) - 1).toString();
                                          }
                                          setState(() {});
                                        },
                                        child: Icon(
                                          CupertinoIcons.minus_circle_fill,
                                          size: 50,
                                        )),
                                  ],
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            InkWell(
              onTap: () {
                double h_in_m = height / 100;
                double result = weight / (h_in_m * h_in_m);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (contex) => Bmiresult(
                        result: result,
                        gender: gender,
                        height: height,
                        weight: weight,
                        age: age,
                      ),
                    ));
              },
              child: Container(
                width: double.infinity,
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(20)),
                height: 100,
                child: Center(
                  child: Text(
                    'Calculate',
                    style: TextStyle(
                        fontSize: 40, color: Colors.white),
                  ),
                ),
              ),
            )
          ]),
        ),
      ),
    );
  }
}