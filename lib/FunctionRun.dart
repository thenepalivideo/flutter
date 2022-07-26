import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class NewFunction extends StatefulWidget {
  const NewFunction({Key? key}) : super(key: key);

  @override
  State<NewFunction> createState() => _NewFunctionState();
}

class _NewFunctionState extends State<NewFunction> {
  double avg = 0.0;
  double average(double a, double b) {
    double ave = a + b;
    double aver = ave / 2;
    return aver;
  }

  Widget clickMe() {
    return ElevatedButton(
        onPressed: (() {
          setState(() {
            avg = average(15, 7);
          });
        }),
        child: Text("Click Me"));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [clickMe(), Text("average: $avg")],
      )),
    );
  }
}

class AverageFunc extends StatefulWidget {
  const AverageFunc({Key? key}) : super(key: key);

  @override
  State<AverageFunc> createState() => _AverageFuncState();
}

class _AverageFuncState extends State<AverageFunc> {
  double averages(int a, int b) {
    double avrg = (a + b) / 2;

    return avrg;
  }

  List<Map<String, dynamic>> avgValue = [
    {"a": 9, "b": 12, "color": Colors.amber},
    {"a": 13, "b": 7, "color": Colors.red},
    {"a": 5, "b": 17, "color": Colors.green},
    {"a": 8, "b": 9, "color": Colors.brown},
    {"a": 16, "b": 11, "color": Colors.black},
  ];
  double currentAve = 0.0;
  Color currentColor = Colors.lightBlue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(children: [
          Container(
            child: Text("$currentAve"),
          ),
          Container(
              child: Column(
            children: avgValue.asMap().entries.map((e) {
              return ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(e.value["color"])),
                  onPressed: () {
                    setState(() {
                      currentColor = e.value["color"];
                      currentAve = averages(e.value["a"], e.value["b"]);
                    });
                  },
                  child: Text("${e.value["a"]},${e.value["b"]}"));
            }).toList(),
          ))
        ]),
      ),
    );
  }
}
