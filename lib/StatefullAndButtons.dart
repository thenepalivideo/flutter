import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class StatefullAndButtons extends StatefulWidget {
  const StatefullAndButtons({Key? key}) : super(key: key);

  @override
  State<StatefullAndButtons> createState() => _StatefullAndButtonsState();
}

class _StatefullAndButtonsState extends State<StatefullAndButtons> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          Text("$counter"),
          ElevatedButton(
              style: ButtonStyle(
                  elevation: MaterialStateProperty.all(3),
                  backgroundColor: MaterialStateProperty.all(Colors.amber),
                  fixedSize: MaterialStateProperty.all(Size(200, 100))),
              onPressed: () {
                setState(() {
                  counter++;
                });
                print(counter);
              },
              child: Text("Click")),
          TextButton(onPressed: () {}, child: Text("Text Click")),
          FloatingActionButton(
            onPressed: () {},
          )
        ],
      ),
    ));
  }
}

class ColorChange extends StatefulWidget {
  const ColorChange({Key? key}) : super(key: key);

  @override
  State<ColorChange> createState() => _ColorChangeState();
}

class _ColorChangeState extends State<ColorChange>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  var cc = Colors.indigo;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Color Change")),
      ),
      body: SafeArea(
          child: Column(
        children: [
          Container(
            color: cc,
            height: 200,
            width: 450,
          ),
          Container(
            margin: EdgeInsets.all(15),
            child: Card(
              child: Container(
                width: 420,
                height: 270,
                child: Column(
                  children: [
                    Container(
                      height: 100,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          ElevatedButton(
                              style: ButtonStyle(
                                  elevation: MaterialStateProperty.all(3),
                                  backgroundColor:
                                      MaterialStateProperty.all(Colors.orange),
                                  fixedSize:
                                      MaterialStateProperty.all(Size(100, 40))),
                              onPressed: () {
                                setState(() {
                                  cc = Colors.orange;
                                });
                              },
                              child: Text("Orange")),
                          ElevatedButton(
                              style: ButtonStyle(
                                  elevation: MaterialStateProperty.all(3),
                                  backgroundColor:
                                      MaterialStateProperty.all(Colors.red),
                                  fixedSize:
                                      MaterialStateProperty.all(Size(100, 40))),
                              onPressed: () {
                                setState(() {
                                  cc = Colors.red;
                                });
                              },
                              child: Text("Red")),
                        ],
                      ),
                    ),
                    Container(
                      height: 100,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          ElevatedButton(
                              style: ButtonStyle(
                                  elevation: MaterialStateProperty.all(3),
                                  backgroundColor:
                                      MaterialStateProperty.all(Colors.blue),
                                  fixedSize:
                                      MaterialStateProperty.all(Size(100, 40))),
                              onPressed: () {
                                setState(() {
                                  cc = Colors.blue;
                                });
                              },
                              child: Text("Blue")),
                          ElevatedButton(
                              style: ButtonStyle(
                                  elevation: MaterialStateProperty.all(3),
                                  backgroundColor:
                                      MaterialStateProperty.all(Colors.green),
                                  fixedSize:
                                      MaterialStateProperty.all(Size(100, 40))),
                              onPressed: () {
                                setState(() {
                                  cc = Colors.green;
                                });
                              },
                              child: Text("Green")),
                        ],
                      ),
                    ),
                    Container(
                      child: ElevatedButton(
                          style: ButtonStyle(
                              elevation: MaterialStateProperty.all(3),
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.indigo),
                              fixedSize:
                                  MaterialStateProperty.all(Size(200, 50))),
                          onPressed: () {
                            setState(() {
                              cc = Colors.indigo;
                            });
                          },
                          child: Text("Color Reset")),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      )),
    );
  }
}

class MappingWidgets extends StatefulWidget {
  const MappingWidgets({Key? key}) : super(key: key);

  @override
  State<MappingWidgets> createState() => _MappingWidgetsState();
}

class _MappingWidgetsState extends State<MappingWidgets> {
  List<Map<String, dynamic>> buttons = [
    {"color": Colors.red, "Name": "Red"},
    {"color": Colors.blue, "Name": "Blue"},
    {"color": Colors.grey, "Name": "Gray"},
    {"color": Colors.green, "Name": "Green"},
    {"color": Colors.black, "Name": "Black"},
    {"color": Colors.yellow, "Name": "Yellow"},
  ];
  Color currentColor = Colors.white;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 200,
              color: currentColor,
            ),
            Container(
                width: double.infinity,
                child: Column(
                  children: buttons.asMap().entries.map((e) {
                    return ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(e.value["color"])),
                        onPressed: () {
                          setState(() {
                            currentColor = e.value["color"];
                          });
                        },
                        child: Text(e.value["Name"]));
                  }).toList(),
                )),
          ],
        ),
      ),
    );
  }
}

class DiceApp extends StatefulWidget {
  const DiceApp({Key? key}) : super(key: key);

  @override
  State<DiceApp> createState() => _DiceAppState();
}

class _DiceAppState extends State<DiceApp> with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  int diceRolled = 3;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(children: [
          SizedBox(
            height: 20,
          ),
          Container(
              height: 200,
              width: double.infinity,
              child: Image.asset(
                diceRolled == 1
                    ? "assets/d1.png"
                    : diceRolled == 2
                        ? "assets/d2.png"
                        : diceRolled == 3
                            ? "assets/d3.png"
                            : diceRolled == 4
                                ? "assets/d4.png"
                                : diceRolled == 5
                                    ? "assets/d5.png"
                                    : "assets/d6.png",
              )),
          ElevatedButton(
              onPressed: () {
                Random random = new Random();
                int randomNumber = random.nextInt(6) + 1;
                setState(() {
                  diceRolled = randomNumber;
                });
              },
              child: Text("ROll"))
        ]),
      ),
    );
  }
}

class ColorCondition extends StatefulWidget {
  const ColorCondition({Key? key}) : super(key: key);

  @override
  State<ColorCondition> createState() => _ColorConditionState();
}

List<Map<String, dynamic>> button = [
  {"Id": 1, "color": Colors.red, "Name": "Red"},
  {"Id": 2, "color": Colors.blue, "Name": "Blue"},
  {"Id": 3, "color": Colors.green, "Name": "Green"},
  {"Id": 4, "color": Colors.yellow, "Name": "Yellow"},
  {"Id": 5, "color": Colors.black, "Name": "Black"},
];
Color currentColor = Colors.grey;
int activeID = 0;

class _ColorConditionState extends State<ColorCondition> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: Column(
        children: [
          Container(
            height: 200,
            width: double.infinity,
            color: currentColor,
          ),
          Column(
              children: button.asMap().entries.map(
            (data) {
              return ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(data.value["color"])),
                  onPressed: activeID == data.value["ID"]
                      ? null
                      : () {
                          setState(() {
                            activeID = data.value["Id"];
                            currentColor = data.value["color"];
                          });
                        },
                  child: Text(data.value["Name"]));
            },
          ).toList())
        ],
      ),
    ));
  }
}
