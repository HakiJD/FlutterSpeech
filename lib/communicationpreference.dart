import 'package:flutter/material.dart';
import 'package:speechimpaired/record.dart';
import 'package:speechimpaired/speechinput.dart';
import 'package:speechimpaired/textinput.dart';

class CommunicationPreference extends StatefulWidget {
  @override
  _CommunicationPreferenceState createState() => _CommunicationPreferenceState();
}

class _CommunicationPreferenceState extends State<CommunicationPreference> {
  @override
  Widget build(BuildContext context) {
   final speech = GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return new SpeechInput();
        }));
      }, // handle your image tap here
      child: Image.asset(
        'assets/speech.png',
        fit: BoxFit.cover, // this is the solution for border
        width: 180.0,
        height: 180.0,
      ),
    );

    final text = GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return new TextInput();
        }));
      }, // handle your image tap here
      child: Image.asset(
        'assets/text.png',
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
          speech,
          Text(
            'Speech Input',
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          Padding(padding: EdgeInsets.only(bottom: 50)),
          text,
          Padding(padding: EdgeInsets.only(bottom: 10)),
          Text('Text Input',
              style: TextStyle(color: Colors.white, fontSize: 20)),
        ],
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text('Communication Preference'),
      ),
      body: body,
    );
  }
}