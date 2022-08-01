import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class LIstViewPage extends StatefulWidget {
  const LIstViewPage({Key? key}) : super(key: key);

  @override
  State<LIstViewPage> createState() => _LIstViewPageState();
}

class _LIstViewPageState extends State<LIstViewPage> {
  List<Map<String, dynamic>> contact = [
    {"name": "abc", "phone": "9857265897"},
    {"name": "abcd", "phone": "9857265897"},
    {"name": "abce", "phone": "9857265897"},
    {"name": "abcr", "phone": "9857265897"},
    {"name": "abct", "phone": "9857265897"},
    {"name": "abct", "phone": "9857265897"},
    {"name": "abcg", "phone": "9857265897"},
    {"name": "abcf", "phone": "9857265897"},
    {"name": "abct", "phone": "9857265897"},
    {"name": "abcy", "phone": "9857265897"},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Container(
        child: ListView.builder(
          itemCount: contact.length,
          itemBuilder: (context, int) => Container(
            child: ListTile(
              title: Text(contact[int]["name"]),
              subtitle: Text(contact[int]["phone"]),
            ),
          ),
        ),
      ),
    ));
  }
}
