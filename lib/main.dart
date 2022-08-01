import 'package:flutter/material.dart';
import 'package:newproject/DataInput.dart';
import 'package:newproject/FunctionRun.dart';
import 'package:newproject/InputField.dart';
import 'package:newproject/IntrativePage.dart';
import 'package:newproject/ListViewPage.dart';
import 'package:newproject/StatefullAndButtons.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const LIstViewPage(),
    );
  }
}

class ColorBox extends StatelessWidget {
  const ColorBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Container(
          alignment: Alignment.center,
          child: Text(
            "This is Text Box",
            style: TextStyle(
                color: Colors.white,
                fontSize: 55,
                fontWeight: FontWeight.w900,
                fontStyle: FontStyle.italic),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          decoration: BoxDecoration(
              border: Border.all(),
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                  image: NetworkImage(
                      "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_960_720.jpg"),
                  fit: BoxFit.fill)),
          width: 250,
          height: 200,
          margin: EdgeInsets.all(10),
          padding: EdgeInsets.all(10),
        ),
      )),
    );
  }
}

class MultipleWidgets extends StatelessWidget {
  const MultipleWidgets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 400,
            color: Colors.blueGrey,
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(width: 100, height: 100, color: Colors.teal),
                  Container(width: 100, height: 100, color: Colors.lightGreen)
                ]),
          ),
          Container(
            width: double.infinity,
            height: 200,
            color: Colors.redAccent,
            child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(width: 100, height: 100, color: Colors.pinkAccent),
                  Container(width: 100, height: 100, color: Colors.indigo)
                ]),
          )
        ],
      ),
    ));
  }
}

class BussCard extends StatelessWidget {
  const BussCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Visiting Card")),
      ),
      body: SafeArea(
        child: Center(
          child: Container(
            decoration: BoxDecoration(color: Colors.white, boxShadow: [
              BoxShadow(
                  blurRadius: 3,
                  color: Colors.grey,
                  offset: Offset(3, 5),
                  spreadRadius: 3)
            ]),
            margin: EdgeInsets.all(15),
            height: 300,
            child: Column(children: [
              Container(
                width: double.infinity,
                height: 100,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                          margin: EdgeInsets.all(15),
                          width: 200,
                          height: 50,
                          color: Colors.blue,
                          child: Row(
                            children: [
                              Image.network(
                                "https://upload.wikimedia.org/wikipedia/commons/c/c2/RYE-R-Logo.png",
                                width: 30,
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 10),
                                child: Column(children: [
                                  Text("Rudraksha",
                                      style: TextStyle(
                                          fontSize: 25,
                                          fontWeight: FontWeight.w900,
                                          color: Colors.white)),
                                  Text(
                                    "Wall  Flower Tiles",
                                    style: TextStyle(color: Colors.white),
                                  )
                                ]),
                              )
                            ],
                          )),
                      Container(
                          margin: EdgeInsets.all(15),
                          width: 100,
                          height: 50,
                          color: Colors.blue,
                          child: Column(
                            children: [
                              Text(
                                "Soch",
                                style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.w900,
                                    color: Colors.white),
                              ),
                              Text(
                                "Sanitary Ware",
                                style: TextStyle(color: Colors.white),
                              )
                            ],
                          ))
                    ]),
              ),
              Container(
                height: 150,
                child:
                    Column(mainAxisAlignment: MainAxisAlignment.end, children: [
                  Text(
                    "Jay Subha Laxmi Suppliers",
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w900,
                        color: Colors.redAccent),
                  ),
                  Text(
                    "Sainamaina",
                    style: TextStyle(
                        color: Colors.blueAccent,
                        fontSize: 20,
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                    "Mob. 9857071110, 9847403136",
                    style: TextStyle(
                        color: Colors.blueAccent,
                        fontSize: 20,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 10,
                  )
                ]),
              ),
              Container(
                width: double.infinity,
                height: 50,
                color: Colors.blueAccent,
                child: Center(
                    child: Text(
                  "Wall Floor Tiles & Sanitary",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                )),
              )
            ]),
          ),
        ),
      ),
    );
  }
}

class Shadow extends StatelessWidget {
  const Shadow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Card(
        elevation: 5,
        child: Container(
          child: GestureDetector(
            onTap: () {
              print("Facebook");
            },
            //     child:
            child: ListTile(
              leading: Icon(
                Icons.facebook,
                size: 90,
                color: Colors.blue,
              ),
              title: Text(
                "List Tile Title",
              ),
              subtitle: Text("List Tile subtitle"),
              trailing: Text("This is Trailing"),
              onTap: () {
                print("List Tile");
              },
            ),
          ),
          height: 200,
          width: 350,
          // decoration: BoxDecoration(color: Colors.white, boxShadow: [
          //   BoxShadow(
          //       color: Colors.grey,
          //       blurRadius: 3,
          //       spreadRadius: 3,
          //       offset: Offset(5, 5)),
          // ]
          // ),
        ),
      ),
    ));
  }
}
