import 'package:billionaire/xscreens/login/bloc/login_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../commom.dart';

class OTPView extends StatelessWidget {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: [
        Container(
          width: 180,
          height: 180.0,
          margin: EdgeInsets.only(
            bottom: 20.0,
          ),
          decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/images/app.jpeg',
                ),
                fit: BoxFit.cover,
              ),
              shape: BoxShape.circle),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Sign Up",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
          ),
        ),
        Text(
          "",
          style: TextStyle(
            fontSize: 15,
            color: Colors.black54,
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
          padding: EdgeInsets.symmetric(vertical: 2.0, horizontal: 10.0),
          decoration: kBoxDecorationStyle,
          child: TextField(
            cursorColor: Colors.black12,
            controller: usernameController,
            keyboardType: TextInputType.text,
            style: TextStyle(
              color: Colors.black,
              fontFamily: 'OpenSans',
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14.0),
              prefixIcon: Icon(Icons.person),
              hintText: ' Username',
            ),
          ),
        ),
        BlocBuilder<LoginBloc, LoginState>(
          builder: (context, state) {
            if (state is UserCreatedState) {
              return Text(state.username.toString());
            }
            if (state is LoginInitial)
              return Container(
                margin: EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
                padding: EdgeInsets.symmetric(vertical: 2.0, horizontal: 10.0),
                decoration: kBoxDecorationStyle,
                child: TextField(
                  cursorColor: Colors.black12,
                  controller: passwordController,
                  keyboardType: TextInputType.text,
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'OpenSans',
                  ),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.only(top: 14.0),
                    prefixIcon: Icon(Icons.code),
                    hintText: ' Password',
                  ),
                ),
              );
            return Container();
          },
        ),
        GestureDetector(
          onTap: () {
            BlocProvider.of<LoginBloc>(context).add(UserCreateEvent(
                usernameController.text, passwordController.text));
          },
          child: Container(
            margin: EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
            padding: EdgeInsets.symmetric(vertical: 14.0, horizontal: 10.0),
            decoration: BoxDecoration(
              color: Colors.pinkAccent,
              borderRadius: BorderRadius.circular(18.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 6.0,
                  offset: Offset(0, 2),
                ),
              ],
            ),
            width: double.infinity,
            child: Text(
              'Sign Up',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                letterSpacing: 1.5,
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                fontFamily: 'OpenSans',
              ),
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.all(8.0),
          margin: EdgeInsets.only(top: 10.0),
          alignment: FractionalOffset.bottomRight,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(),
              Opacity(
                opacity: 0.5,
                child: GestureDetector(
                  onTap: () {},
                  child: Text(
                    "Resend code ",
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.pink,
                        fontWeight: FontWeight.w800),
                  ),
                ),
              )
            ],
          ),
        )
      ],
    ));
  }
}
