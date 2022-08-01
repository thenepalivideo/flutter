import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class InputField extends StatefulWidget {
  const InputField({Key? key}) : super(key: key);

  @override
  State<InputField> createState() => _InputFieldState();
}

class _InputFieldState extends State<InputField> {
  // Enum Genders{"Male","Femle","Others"};
  static List<String> gender = [
    "Male",
    "Female",
    "Others",
  ];
  bool isChecked = false;
  double sliderValue = 0;
  String selectedGender = gender.first;
  static List<String> fruits = ["apple", "banana", "mango", "orange"];
  String selectedFruits = fruits.first;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          DropdownButton(
              value: selectedFruits,
              items: fruits
                  .map((String e) => DropdownMenuItem(value: e, child: Text(e)))
                  .toList(),
              onChanged: (String? value) {
                setState(() {
                  selectedFruits = value!;
                });
              }),
          Row(
            children: gender.asMap().entries.map((e) {
              return Row(
                children: [
                  Radio(
                      value: e.value,
                      groupValue: selectedGender,
                      onChanged: (String? value) {
                        setState(() {
                          selectedGender = value!;
                        });
                      }),
                  Text(e.value)
                ],
              );
            }).toList(),
          ),
          Checkbox(
              value: isChecked,
              onChanged: (bool? val) {
                setState(() {
                  isChecked = val!;
                });
              }),
          Slider(
              min: 1,
              max: 100,
              value: sliderValue,
              onChanged: (double? val) {
                setState(() {
                  sliderValue = val!;
                });
              })
        ],
      )),
    );
  }
}
