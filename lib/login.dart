import "package:flutter/material.dart";
import 'package:speechimpaired/createuser.dart';
import 'package:speechimpaired/home.dart';

class Login extends StatefulWidget {
  static String tag = 'login-page';
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    final logo = Hero(
      tag: 'hero',
      child: CircleAvatar(
        backgroundColor: Colors.transparent,
        radius: 70.0,
        child: Image.asset('assets/loginlogo.png'),
      ),
    );

    final username = TextFormField(
      style: new TextStyle(color: const Color(0xFFCEEEEB)),
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      decoration: InputDecoration(
        hintText: 'Username',
        hintStyle: TextStyle(fontSize: 15.0, color: const Color(0xFFCEEEEB)),
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(32.0),
          borderSide:
              const BorderSide(color: const Color(0xFFCEEEEB), width: 1.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(32.0),
          borderSide:
              const BorderSide(color: const Color(0xFFCEEEEB), width: 1.0),
        ),
      ),
    );

    final password = TextFormField(
      style: new TextStyle(color: const Color(0xFFCEEEEB)),
      autofocus: false,
      obscureText: true,
      decoration: InputDecoration(
        hintText: 'Password',
        hintStyle: TextStyle(fontSize: 15.0, color: const Color(0xFFCEEEEB)),
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(32.0),
          borderSide:
              const BorderSide(color: const Color(0xFFCEEEEB), width: 1.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(32.0),
          borderSide:
              const BorderSide(color: const Color(0xFFCEEEEB), width: 1.0),
        ),
      ),
    );

    final loginButton = Padding(
      padding: EdgeInsets.symmetric(vertical: 15.0),
      child: RaisedButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
        onPressed: () {
          //Navigator.of(context).pushNamed(Home.tag); //FIND SOLUTION FOR THE ERROR

          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return new Home();
          }));
        },
        padding: EdgeInsets.all(15),
        color: const Color(0xFFff7f50),
        child: Text(
          'Login',
          style: TextStyle(color: Colors.white, fontSize: 15.0),
        ),
      ),
    );

    final createuser = FlatButton(
      child: Text(
        "Create User",
        style: TextStyle(color: Colors.white, fontSize: 15),
      ),
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return new CreateUser();
        }));
      },
    );

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [const Color(0xFF003b73), const Color(0xFF1c73b8)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Center(
          child: ListView(
            shrinkWrap: true,
            padding: EdgeInsets.only(left: 24.0, right: 24.0),
            children: <Widget>[
              logo,
              SizedBox(height: 50.0),
              username,
              SizedBox(height: 15.0),
              password,
              SizedBox(height: 24.0),
              loginButton,
              createuser
            ],
          ),
        ),
      ),
    );
  }
}
