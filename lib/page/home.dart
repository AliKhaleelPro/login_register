import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login_register/page/login.dart';
import 'package:login_register/page/sign_up.dart';
import 'package:login_register/utils/custom_paint.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white10,
      body: Stack(
        children: [
          CustomPaint(
            painter: Painter(),
            child: Container(),
          ),
          Center(
            child: Transform.translate(
              offset: Offset(0, 50),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _Login(context),
                  SizedBox(
                    height: 30,
                  ),
                  _SignUp(context),
                  _Text(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Widget _Login(BuildContext context) {
  return InkWell(
    onTap: () {
      Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));
    },
    splashColor: Color(0),
    highlightColor: Color(0),
    child: Container(
      height: 40.0,
      width: 300.0,
      child: Text(
        'Login',
        textAlign: TextAlign.center,
        style: TextStyle(
            fontSize: 25.0,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
            color: Colors.black87),
      ),
      decoration: BoxDecoration(
          color: Colors.amber,
          borderRadius: BorderRadius.all(Radius.circular(20.0))),
    ),
  );
}

Widget _SignUp(BuildContext context) {
  return InkWell(
    onTap: () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => SignUp()));
    },
    splashColor: Color(0),
    highlightColor: Color(0),
    child: Container(
      height: 40.0,
      width: 300.0,
      child: Text(
        'Sign up',
        textAlign: TextAlign.center,
        style: TextStyle(
            fontSize: 25.0,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
            color: Colors.black87),
      ),
      decoration: BoxDecoration(
          color: Colors.amber,
          borderRadius: BorderRadius.all(Radius.circular(20.0))),
    ),
  );
}

Widget _Text() {
  return Transform.translate(
    offset: Offset(0, 180),
    child: Text(
      'Please sign in to continue.',
      style: TextStyle(
          color: Colors.amber,
          fontWeight: FontWeight.bold,
          fontStyle: FontStyle.italic,
          fontSize: 15),
    ),
  );
}
