import 'package:flutter/material.dart';

class Record extends StatefulWidget {
  @override
  _RecordState createState() => _RecordState();
}

class _RecordState extends State<Record> {
  @override
  Widget build(BuildContext context) {
    final play = Padding(
      padding: EdgeInsets.symmetric(vertical: 15),
      child: ButtonTheme(
        minWidth: 150,
        child: RaisedButton(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
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

    final done = Padding(
      padding: EdgeInsets.symmetric(vertical: 15),
      child: ButtonTheme(
        minWidth: 150,
        child: RaisedButton(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
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
          TextFormField(
            style: new TextStyle(color: const Color(0xFFCEEEEB)),
            textAlign: TextAlign.center,
            keyboardType: TextInputType.emailAddress,
            autofocus: false,
            decoration: InputDecoration(
              hintText: 'Text Input',
              hintStyle:
                  TextStyle(fontSize: 20.0, color: const Color(0xFFCEEEEB)),
              contentPadding: EdgeInsets.fromLTRB(20.0, 80.0, 20.0, 80.0),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(32.0),
                borderSide: const BorderSide(
                    color: const Color(0xFFCEEEEB), width: 1.0),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(32.0),
                borderSide: const BorderSide(
                    color: const Color(0xFFCEEEEB), width: 1.0),
              ),
            ),
          ),
           SizedBox(height: 80,),
          GestureDetector(
            onTap: () {}, // handle your image tap here
            child: Image.asset(
              'assets/all_red_record.png', // this is the solution for border
              width: 100.0,
              height: 100.0,
            ),
          ),
          SizedBox(
            height: 80,
          ),
          Row(
            children: [play, Spacer(), done],
          ),
        ],
      ),
    );

    // final recordspeech =
    return Scaffold(
      appBar: AppBar(
        title: Text('Record'),
      ),
      resizeToAvoidBottomInset: false,
      body: body,
    );
    // body: Container(
    //   decoration: BoxDecoration(
    //     gradient: LinearGradient(
    //       colors: [const Color(0xFF003b73), const Color(0xFF1c73b8)],
    //       begin: Alignment.topCenter,
    //       end: Alignment.bottomCenter,
    //     ),
    //   ),
    //   child: Center(
    //     child: ListView(
    //       shrinkWrap: true,
    //       padding: EdgeInsets.only(left: 24.0, right: 24.0),
    //       children: <Widget>[
    //         textlabel,
    //         SizedBox(
    //           height: 15.0,
    //         ),
    //         recordspeech,
    //       ],
    //     ),
    //   ),
    // ),
    //);
  }
}
