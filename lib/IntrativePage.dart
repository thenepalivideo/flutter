import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:share_plus/share_plus.dart';
import 'package:url_launcher/url_launcher.dart';

class IntrativePage extends StatefulWidget {
  const IntrativePage({Key? key}) : super(key: key);

  @override
  State<IntrativePage> createState() => _IntrativePageState();
}

class _IntrativePageState extends State<IntrativePage> {
  Future<void> _launchInBrowser(String url) async {
    Uri link = Uri.parse(url);
    if (!await launchUrl(
      link,
      mode: LaunchMode.platformDefault,
    )) {
      throw 'Could not launch $url';
    }
  }

  Future<void> _makePhoneCall(String phoneNumber) async {
    final Uri launchUri = Uri(
      scheme: 'tel',
      path: phoneNumber,
    );
    await launchUrl(launchUri);
  }

  Map<String, dynamic> data = {
    "image": "assets/mo.jpg",
    "title": "Mountain View",
    "subtitle": "Pokhara, Nepal",
    "rating": 41,
    "favrate": false,
    "mobile": "9857060570",
    "disc":
        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
  };
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Container(
          child: Column(
        children: [
          Container(
            child: Image.asset(data["image"]),
            width: double.infinity,
          ),
          Container(
            child: ListTile(
              title: Text(data["title"]),
              subtitle: Text(data["subtitle"]),
              trailing: Container(
                width: 100,
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        if (data["favrate"]) {
                          setState(() {
                            data["rating"]--;
                            data["favrate"] = false;
                          });
                        } else {
                          setState(() {
                            data["rating"]++;
                            data["favrate"] = true;
                          });
                        }
                      },
                      icon: Icon(
                        data["favrate"] ? Icons.star : Icons.star_border,
                        color: Colors.red,
                      ),
                    ),
                    Text("${data["rating"]}")
                  ],
                ),
              ),
            ),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: () {
                    _makePhoneCall(data["mobile"]);
                  },
                  child: Container(
                    child: Column(
                      children: [
                        Icon(
                          Icons.call,
                          color: Colors.blue,
                        ),
                        Text(
                          "call",
                          style: TextStyle(color: Colors.blue),
                        ),
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    _launchInBrowser("https://www.onlinekhabar.com");
                  },
                  child: Container(
                    child: Column(
                      children: [
                        Icon(
                          Icons.navigation,
                          color: Colors.blue,
                        ),
                        Text(
                          "Route",
                          style: TextStyle(color: Colors.blue),
                        )
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Share.share('check out my website https://example.com');
                  },
                  child: Container(
                    child: Column(
                      children: [
                        Icon(
                          Icons.share,
                          color: Colors.blue,
                        ),
                        Text(
                          "Share",
                          style: TextStyle(color: Colors.blue),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(15),
            child: Text(data["disc"]),
          )
        ],
      )),
    ));
  }
}
