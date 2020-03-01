import 'package:flutter/material.dart';
import 'package:speechimpaired/communicationpreference.dart';
import 'package:speechimpaired/homepage_drawer.dart';
import 'package:speechimpaired/record.dart';

class Home extends StatefulWidget {
  static String tag = 'home-page';

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final record = GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return new Record();
        }));
      }, // handle your image tap here
      child: Image.asset(
        'assets/Record.png',
        fit: BoxFit.cover, // this is the solution for border
        width: 200.0,
        height: 200.0,
      ),
    );

    final communicate = GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return new CommunicationPreference();
        }));
      }, // handle your image tap here
      child: Image.asset(
        'assets/Communicate.png',
        fit: BoxFit.cover, // this is the solution for border
        width: 180.0,
        height: 180.0,
      ),
    );

    final body = Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(25.0),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [const Color(0xFF003b73), const Color(0xFF1c73b8)],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Column(
        children: <Widget>[
          record,
          Text(
            'Record',
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          Padding(padding: EdgeInsets.only(bottom: 50)),
          communicate,
          Padding(padding: EdgeInsets.only(bottom: 10)),
          Text('Communicate',
              style: TextStyle(color: Colors.white, fontSize: 20)),
        ],
      ),
    );

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Main Page'),
        ),
        drawer: HomePageDrawer(),
        body: body,
      ),
    );
  }
}
