import 'package:flutter/material.dart';

class SpeechInput extends StatefulWidget {
  @override
  _SpeechInputState createState() => _SpeechInputState();
}

class _SpeechInputState extends State<SpeechInput> {
  @override
  Widget build(BuildContext context) {
    final talk = Padding(
      padding: EdgeInsets.symmetric(vertical: 15),
      child: ButtonTheme(
        minWidth: 150,
              child: RaisedButton(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
          onPressed: () {},
          padding: EdgeInsets.all(12),
          color: const Color(0xFFff7f50),
          child: Text(
            "Talk",
            style: TextStyle(color: Colors.white, fontSize: 15.0),
          ),
        ),
      ),
    );

    final translate = Padding(
      padding: EdgeInsets.symmetric(vertical: 15),
      child: ButtonTheme(
        minWidth: 150,
              child: RaisedButton(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
          onPressed: () {},
          padding: EdgeInsets.all(12),
          color: const Color(0xFFff7f50),
          child: Text(
            "Translate",
            style: TextStyle(color: Colors.white, fontSize: 15.0),
          ),
        ),
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
        children: [
          Text(
            'Speech and Text Output',
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          Image.asset(
            'assets/blue_diamondpng.png',
            fit: BoxFit.cover, // this is the solution for border
            width: 180.0,
            height: 180.0,
          ),
          SizedBox(height: 100,),
          Row(
            children: [
              talk, Spacer(), translate],
          ),
        ],
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text('Speech Input'),
      ),
      body: body,
    );
  }
}
