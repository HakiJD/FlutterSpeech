import 'package:flutter/material.dart';

class TextInput extends StatefulWidget {
  @override
  _TextInputState createState() => _TextInputState();
}

class _TextInputState extends State<TextInput> {
  @override
  Widget build(BuildContext context) {
    final textlabel = TextFormField(
      style: new TextStyle(color: const Color(0xFFCEEEEB)),
      textAlign: TextAlign.center,
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      decoration: InputDecoration(
        hintText: 'Text Input',
        hintStyle: TextStyle(fontSize: 15.0, color: const Color(0xFFCEEEEB)),
        contentPadding: EdgeInsets.fromLTRB(20.0, 80.0, 20.0, 80.0),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(32.0),
          borderSide:
              const BorderSide(color: const Color(0xFFCEEEEB), width: 1.0),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(32.0),
          borderSide:
              const BorderSide(color: const Color(0xFFCEEEEB), width: 1.0),
        ),
      ),
    );
    final recordspeech = GestureDetector(
      onTap: () {}, // handle your image tap here
      child: Image.asset(
        'assets/all_red_record.png', // this is the solution for border
        width: 100.0,
        height: 100.0,
      ),
    );
    final entertext = Padding(
      padding: EdgeInsets.symmetric(vertical: 15.0),
      child: RaisedButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
        onPressed: () {

        },
        padding: EdgeInsets.all(15),
        color: const Color(0xFFff7f50),
        child: Text(
          'Enter',
          style: TextStyle(color: Colors.white, fontSize: 15.0),
        ),
      ),
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
              recordspeech,
              SizedBox(
                height: 15.0,
              ),
              textlabel,
              SizedBox(
                height: 15.0,
              ),
              entertext
            ],
          ),
        ),
      ),
    );
  }
}
