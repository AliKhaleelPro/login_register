import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
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
              _CreatAccount(context),
              SizedBox(
                height: 25,
              ),
              Column(
                children: [
                  _SignName(),
                  SizedBox(
                    height: 30.0,
                  ),
                  _SignEmail(),
                  SizedBox(
                    height: 30.0,
                  ),
                  _SignPass(),
                  SizedBox(
                    height: 30.0,
                  ),
                  _SignButt()
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

Widget _CreatAccount(BuildContext context) {
  return Container(
    alignment: Alignment.center,
    height: MediaQuery.of(context).size.height * 0.4,
    width: MediaQuery.of(context).size.width,
    decoration: BoxDecoration(
        color: Colors.amber,
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(90), topRight: Radius.circular(90))),
    child: Text(
      'Creat Account',
      style: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold,
          fontStyle: FontStyle.italic),
    ),
  );
}

Widget _SignName() {
  return TextFormField(
    decoration: InputDecoration(
      prefixText: 'Name ',
      prefixStyle: TextStyle(
        color: Colors.black87,
      ),
      prefixIcon: Icon(
        Icons.person,
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
    keyboardType: TextInputType.name,
    maxLines: 1,
  );
}

Widget _SignEmail() {
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

Widget _SignPass() {
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

Widget _SignButt() {
  return RaisedButton(
    padding: EdgeInsets.symmetric(horizontal: 30),
    color: Colors.amber,
    elevation: 200.0,
    child: Text('Sign up'),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
    onPressed: () {},
  );
}
