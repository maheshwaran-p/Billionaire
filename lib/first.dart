import 'package:billionaire/chatbot.dart';
import 'package:billionaire/xscreens/login/ui/sign-up.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class First extends StatefulWidget {
  @override
  _FirstState createState() => _FirstState();
}

class _FirstState extends State<First> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: ListView.separated(
        padding: const EdgeInsets.all(0),
        itemCount: 10,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
              title: Text("RAHURAM T", style: TextStyle(fontSize: 20)),
              leading: CircleAvatar(
                radius: 18,
                backgroundColor: Colors.black,
                backgroundImage: NetworkImage(
                    "https://static.wixstatic.com/media/275ab7_144e8f5e613645ad90c29b9972684234~mv2.jpg/v1/fill/w_486,h_456,fp_0.50_0.50,lg_1,q_80/275ab7_144e8f5e613645ad90c29b9972684234~mv2.webp"),
              ),
              subtitle: Text(
                  " Success (the opposite of failure) is the status of having achieved and accomplished an aim or objective. Being successful means the achievement of desired visions and planned goals. ..."));
        },
        separatorBuilder: (BuildContext context, int index) => const Divider(),
      )),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.greenAccent,
        child: Text("Help"),
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => OTPView()));
        },
      ),
    );
  }
}

_launchURL() async {
  const url = 'https://mahesh.newsled.in/IBM-Hackathon-chatbot.html';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
