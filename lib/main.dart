import 'package:flutter/material.dart';
import 'login.dart';
import 'home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final routes = <String, WidgetBuilder>{
    Login.tag: (context) => Login(),
    Home.tag: (context) => Home(),
  };
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Login",
        debugShowCheckedModeBanner: false, 
        theme: ThemeData(
          primarySwatch: Colors.lightBlue,
          fontFamily: 'Muli',
        ),
        home: Login(),
        routes: routes);
  }
}
