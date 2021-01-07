import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white10,
      body: SingleChildScrollView(
        child: Padding(
          padding:
              const EdgeInsets.only(top: 25, right: 5, left: 5, bottom: 20),
          child: Column(
            children: [
              _Wellcom(context),
              SizedBox(
                height: 25,
              ),
              Column(
                children: [
                  _LoginEmail(),
                  SizedBox(
                    height: 30.0,
                  ),
                  _LoginPass(),
                  SizedBox(
                    height: 30.0,
                  ),
                  _FogInk(),
                  SizedBox(
                    height: 30.0,
                  ),
                  _LogButton(),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

Widget _Wellcom(BuildContext context) {
  return Container(
    alignment: Alignment.center,
    height: MediaQuery.of(context).size.height * 0.4,
    width: MediaQuery.of(context).size.width,
    decoration: BoxDecoration(
        color: Colors.amber,
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(90), topRight: Radius.circular(90))),
    child: Text(
      'Welcome Back',
      style: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold,
          fontStyle: FontStyle.italic),
    ),
  );
}

Widget _LoginEmail() {
  return TextFormField(
    decoration: InputDecoration(
      prefixText: 'Email ',
      prefixStyle: TextStyle(
        color: Colors.black87,
      ),
      prefixIcon: Icon(
        Icons.email,
        color: Colors.black87,
      ),
      fillColor: Colors.amber,
      filled: true,
      border: UnderlineInputBorder(
        borderRadius: BorderRadius.circular(20),
        borderSide: BorderSide.none,
      ),
    ),
    style: TextStyle(
      color: Colors.black87,
      fontStyle: FontStyle.italic,
    ),
    keyboardType: TextInputType.emailAddress,
    maxLines: 1,
  );
}

Widget _LoginPass() {
  return TextFormField(
    decoration: InputDecoration(
      prefixText: 'Password ',
      prefixStyle: TextStyle(
        color: Colors.black87,
      ),
      prefixIcon: Icon(
        Icons.security,
        color: Colors.black87,
      ),
      fillColor: Colors.amber,
      filled: true,
      border: UnderlineInputBorder(
        borderRadius: BorderRadius.circular(20),
        borderSide: BorderSide.none,
      ),
    ),
    style: TextStyle(
      color: Colors.black87,
      fontStyle: FontStyle.italic,
    ),
    keyboardType: TextInputType.text,
    maxLines: 1,
  );
}

Widget _FogInk() {
  return InkWell(
    onTap: () {},
    child: Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            'Forgot password ?',
            style: TextStyle(
                color: Colors.amber, fontSize: 15, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    ),
    splashColor: Color(0),
    hoverColor: Color(0),
    highlightColor: Color(0),
  );
}

Widget _LogButton() {
  return RaisedButton(
    padding: EdgeInsets.symmetric(horizontal: 30),
    color: Colors.amber,
    elevation: 200.0,
    child: Text('Log in'),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
    onPressed: () {},
  );
}
