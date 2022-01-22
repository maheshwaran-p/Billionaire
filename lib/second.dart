import 'package:billionaire/invite.dart';
import 'package:billionaire/xscreens/login/bloc/login_bloc.dart';
import 'package:billionaire/xscreens/login/ui/sign-up.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Second extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        //  color: Colors.orange,
        //  padding: EdgeInsets.only(left: 20, right: 20, top: 25, bottom: 20),
        // child: Text(""),

        children: [
          Padding(
              padding: EdgeInsets.only(
            top: 10,
          )),
          Stack(
            children: <Widget>[
              Container(
                  color: Colors.black,
                  height: 30,
                  width: MediaQuery.of(context).size.width * 1.0,
                  child: Center(
                    child: Text(
                      "Your Profile",
                      style: TextStyle(color: Colors.white),
                    ),
                  )),
              Padding(padding: EdgeInsets.only(right: 20, left: 20)),
            ],
          ),
          Stack(
            children: [
              BlocBuilder<LoginBloc, LoginState>(
                builder: (context, state) {
                  if (state is UserCreatedState)
                    return Container(
                      // color: Colors.white,
                      height: 40,
                      width: MediaQuery.of(context).size.width * 1.0,
                      child: Text(
                        "${state.username}",
                        style: TextStyle(
                          fontWeight: FontWeight.w800,
                          fontSize: 23,
                        ),
                      ),
                    );
                  return Container();
                },
              ),
              Padding(padding: EdgeInsets.only(right: 20, left: 20)),
              Align(
                alignment: Alignment.centerRight,
                child: CircleAvatar(
                  radius: 18,
                  backgroundColor: Colors.black,
                  backgroundImage: NetworkImage(
                      "https://static.wixstatic.com/media/275ab7_144e8f5e613645ad90c29b9972684234~mv2.jpg/v1/fill/w_486,h_456,fp_0.50_0.50,lg_1,q_80/275ab7_144e8f5e613645ad90c29b9972684234~mv2.webp"),
                ),
              ),
            ],
          ),
          SizedBox(height: 15),
          Row(
            children: [
              Row(
                children: [
                  Container(
                    width: 108,
                    height: 50,
                    child: Text(
                      " Networth",
                      style: TextStyle(color: Colors.black26),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(width: 10),
                  Container(
                    width: 108,
                    height: 50,
                    child: Text(
                      "Today's points",
                      style: TextStyle(color: Colors.black26),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(width: 10),
                  Container(
                    width: 108,
                    height: 50,
                    child: Text(
                      "Overall points",
                      style: TextStyle(color: Colors.black26),
                      textAlign: TextAlign.center,
                    ),
                  )
                ],
              ),
            ],
          ),
          Row(
            children: [
              Row(
                children: [
                  Container(
                    width: 108,
                    height: 50,
                    child: Text(
                      "Rs.100",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.w700),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(width: 10),
                  Container(
                    width: 108,
                    height: 50,
                    child: Text(
                      "0.00%",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.w700),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(width: 10),
                  Container(
                    width: 108,
                    height: 50,
                    child: Text(
                      "Rs.0.00",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.w700),
                      textAlign: TextAlign.center,
                    ),
                  )
                ],
              ),
            ],
          ),
          Container(
              color: Colors.black,
              height: 30,
              width: MediaQuery.of(context).size.width * 1.0,
              child: Center(
                child: Text(
                  "About this game",
                  style: TextStyle(color: Colors.white),
                  textAlign: TextAlign.center,
                ),
              )),
          SizedBox(height: 13),
          Row(
            //crossAxisAlignment: CrossAxisAlignment.end,
            // mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(padding: EdgeInsets.only(right: 10, left: 266)),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => OTPView()));
                },
                child: Container(
                  padding: EdgeInsets.all(6.5),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        const Color(0xfffc0b7b),
                        const Color(0xff7820ad)
                      ],
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Text(
                    'Invite Players',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 15),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
