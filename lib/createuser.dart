import 'package:flutter/material.dart';
import 'package:speechimpaired/home.dart';
import 'package:speechimpaired/login.dart';

class CreateUser extends StatefulWidget {
  static String tag = 'createuser-page';

  @override
  _CreateUserState createState() => _CreateUserState();
}

class _CreateUserState extends State<CreateUser> {
  @override
  Widget build(BuildContext context) {
    final male = Image.asset(
      'assets/male.png',
      height: 200,
      width: 200,
    );
    final female = Image.asset(
      'assets/female1.png',
      height: 200,
      width: 200,
    );

    final username = TextFormField(
      style: new TextStyle(color: const Color(0xFFCEEEEB)),
      keyboardType: TextInputType.text,
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

    final email = TextFormField(
      style: new TextStyle(color: const Color(0xFFCEEEEB)),
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      decoration: InputDecoration(
        hintText: 'Email',
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

    final createuserbutton = Padding(
      padding: EdgeInsets.symmetric(vertical: 15),
      child: RaisedButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return new Home();
          }));
        },
        padding: EdgeInsets.all(12),
        color: const Color(0xFFff7f50),
        child: Text(
          "Create User",
          style: TextStyle(color: Colors.white, fontSize: 15.0),
        ),
      ),
    );

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [const Color(0xFF003b73), const Color(0xFF1c73b8)],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
                child: Center(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  male,
                                  SizedBox(
                                    height: 50.0,
                                  ),
                                ],
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  female,
                                  SizedBox(
                                    height: 50.0,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          ListView(
                    shrinkWrap: true,
                    padding: EdgeInsets.only(left: 24.0, right: 24.0),
                    children: <Widget>[
                      username,
                      SizedBox(
                        height: 15.0,
                      ),
                      password,
                      SizedBox(
                        height: 15.0,
                      ),
                      email,
                      SizedBox(
                        height: 15.0,
                      ),
                      createuserbutton
                    ],
                  )
                        ],
                      ),
                    ],
                  ),
                )),
          ],
        ),
      ),
    );
  }
}

/*child: Center(
                  ,
                )*/
