import 'package:flutter/material.dart';


class tts extends StatefulWidget {
  tts({Key? key}) : super(key: key);

  @override
  _ttsState createState() => _ttsState();
}

class _ttsState extends State<tts> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      backgroundColor: Colors.white,
      appBar: AppBar(
          leading: IconButton(
              icon: Icon(Icons.arrow_back_ios),
              onPressed: () {
                Navigator.pop(context); // fuck go back button
              }),
      )
    );
  }
}