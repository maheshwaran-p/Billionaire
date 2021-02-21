import 'package:flutter/material.dart';

class Invite extends StatefulWidget {
  @override
  _InviteState createState() => _InviteState();
}

class _InviteState extends State<Invite> {
  bool valuesecond = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Invite"),
      ),
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
                  " Success (the opposite of failure) is the status of having achieved and accomplished an aim or objective. Being successful means the achievement of desired visions and planned goals. ..."),
              trailing: Checkbox(
                  value: this.valuesecond,
                  onChanged: (bool value) {
                    setState(() {
                      this.valuesecond = value;
                    });
                  }));
        },
        separatorBuilder: (BuildContext context, int index) => const Divider(),
      )),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.greenAccent,
        child: Text("Help"),
        onPressed: () {},
      ),
    );
  }
}
