import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class DataInput extends StatefulWidget {
  const DataInput({Key? key}) : super(key: key);

  @override
  State<DataInput> createState() => _DataInputState();
}

class _DataInputState extends State<DataInput> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Stack(
        children: [
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/mo.jpg"), fit: BoxFit.cover)),
            padding: EdgeInsets.all(15),
          ),
          Container(
            color: Colors.black.withOpacity(0.1),
          ),
          Column(
            children: [
              TextFormField(
                  decoration: InputDecoration(
                      labelText: "Email",
                      helperText: "Enter Your Email",
                      hintText: "user@gmail.com",
                      prefixIcon: Icon(Icons.mail))),
              TextFormField(
                  decoration: InputDecoration(
                labelText: "Password",
                helperText: "Password must be 8 character Long",
                prefixIcon: Icon(Icons.lock),
                suffix: IconButton(
                    onPressed: () {
                      setState(() {});
                    },
                    icon: Icon(Icons.remove_red_eye_outlined)),
              )),
              ElevatedButton(onPressed: () {}, child: Text("Login"))
            ],
          )
        ],
      )),
    );
  }
}
